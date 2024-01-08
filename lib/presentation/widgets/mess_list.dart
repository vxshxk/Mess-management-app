import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../data/models/mess_model.dart';
import '../../data/models/user_model.dart';
import '../../domain/usecases/mess_apply/mess_apply_impl.dart';
import '../../main.dart';
import '../bloc/mess_bloc/mess_bloc.dart';
import '../bloc/nav_bloc/nav_bloc.dart';


class TabWidget2 extends StatefulWidget {
  final UserModel? user;

  TabWidget2({Key? key, required this.user}) : super(key: key);

  @override
  State<TabWidget2> createState() => _TabWidget2State();
}

class _TabWidget2State extends State<TabWidget2> {
  int? topUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 20,
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance.collection('Mess').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SpinKitRotatingCircle(
                  color: Colors.deepPurple[400],
                  size: 50.0,
                ); // Show a loading indicator while waiting for data
              }

              if (!snapshot.hasData || snapshot.hasError) {
                return const Text("Error loading data"); // Handle error state
              }


              return SingleChildScrollView(
                child: Column(
                  children: [
                    StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: db2.doc(widget.user?.uid).snapshots(),
                builder: (context, snapshot) {
                  return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                    future: db2.doc(widget.user?.uid).get(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return SpinKitRotatingCircle(
                          color: Colors.deepPurple[400],
                          size: 25.0,
                        );
                      }

                      if (!snapshot.hasData || snapshot.hasError) {
                        return const Text("Error loading data");
                      }

                      Map<String, dynamic> resMap = snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple[300]!,
                          ),
                        ),
                        child: ListTile(
                          title: Text(
                            "Current mess: ${resMap["mess"]}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  );
                }
                ),
                    const SizedBox(height: 10,),
                    const Text("List of available messes",style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        BlocBuilder<MessBloc, MessState>(
                          builder: (context, state) {
                            if (state is Updated) {
                              return const Text(
                                "Applied! Pending Approval",
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        MessModel userone = MessModel.fromJson(snapshot.data!.docs[index].data() as Map<String, dynamic>);

                        return Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple[300]!,
                            ),
                          ),
                          child: Expanded(
                            flex: 9,
                            child: ListTile(
                              onTap: () {
                                userone.currentSize! != "0" ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserList(doc: userone.name)
                                  ),
                                ): {};
                              },
                              title: Text(
                                userone.name!,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Capacity: ${userone.currentSize!}/${userone.size}",
                              ),
                              trailing: BlocBuilder<MessBloc, MessState>(
                                builder: (context, state) {
                                  return IconButton(
                                    onPressed: () async{
                                      widget.user?.role=="admin" ? {
                                              await FirebaseFirestore.instance
                                                  .collection('Mess')
                                                  .doc(userone.name)
                                                  .delete(),
                                        await FirebaseFirestore.instance
                                            .collection('Waitinglist')
                                            .doc(userone.name)
                                            .delete(),

                                            }
                                          :
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            content: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                const Text(
                                                  "Apply for mess? Select an amount to TopUp",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                TextField(
                                                  obscureText: false,
                                                  onChanged: (val) {
                                                    topUp = int.parse(val);
                                                  },
                                                  decoration: InputDecoration(
                                                    contentPadding: const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 10,
                                                    ),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.grey[400]!,
                                                      ),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.grey[400]!,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                TextButton(
                                                  onPressed: () async {
                                                    final messApply = MessApplyImpl(
                                                        user: widget.user, mess: userone);
                                                    await messApply.applyMessChange(topUp!);
                                                    messBloc.add(const DataChanged());
                                                    Navigator.pop(context);
                                                    setState(() {

                                                    });
                                                  },
                                                  child: const Text("Submit"),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: widget.user?.role =="admin" ? const Icon(Icons.delete) : const Icon(Icons.add),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                  child: IconButton(
                    onPressed: () {
                      navBloc.add(const FirstPage());
                    },
                    icon: const Icon(Icons.home),
                    color: Colors.deepPurple[400],
                  )
              ),
              Expanded(
                  child: IconButton(
                    onPressed: () {
                      navBloc.add(const SecondPage());
                    },
                    icon: const Icon(Icons.home),
                    color: Colors.deepPurple[400],
                  )
              ),
              Expanded(
                  child: IconButton(
                    onPressed: () {
                      navBloc.add(const ThirdPage());
                    },
                    icon: const Icon(Icons.home),
                    color: Colors.deepPurple[400],
                  )
              ),


            ],
          ),
        )
      ],
    );
  }
}

class UserList extends StatelessWidget {
  final String? doc;

  const UserList({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: db1.doc(doc).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SpinKitRotatingCircle(
            color: Colors.deepPurple[400],
            size: 50.0,
          );
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return const Text("Error loading data");
        }

        Map<String, dynamic> resMap = snapshot.data!.data() as Map<String, dynamic>;
        List<dynamic> users = resMap["members"] ;

        if (users == null) {
          // Handle the case where "members" is null, maybe show an error message or return an empty widget.
          return const Text("No members data available");
        }


        return Column(
          children: [
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                    future: db2.doc(users[index]).get(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return SpinKitRotatingCircle(
                          color: Colors.deepPurple[400],
                          size: 50.0,
                        );
                      }

                      if (!snapshot.hasData || snapshot.hasError) {
                        return const Text("Error loading data");
                      }

                      Map<String, dynamic> resMap2 = snapshot.data!.data() as Map<String, dynamic>;

                      return Material(
                        color: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.deepPurple[300]!,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 25,
                                child: ListTile(
                                  title: Text(
                                    resMap2["name"],
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "Mess Balance: ${resMap2["messBalance"]}", // Fixed typo here
                                  ),
                                  trailing: IconButton(
                                    onPressed: () async {},
                                    icon: const Icon(Icons.done_outline_sharp),
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: IconButton(
                                  onPressed: () async {},
                                  icon: const Icon(Icons.cancel_outlined),
                                  color: Colors.red,
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: SizedBox(),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Text("   "),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                    color: Colors.deepPurple[400],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Text("   "),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
