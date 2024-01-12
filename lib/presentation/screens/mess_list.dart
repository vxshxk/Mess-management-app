import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/presentation/widgets/nav_bar.dart';
import 'package:mess_app/presentation/widgets/user_list.dart';
import '../../data/models/mess_model.dart';
import '../../data/models/user_model.dart';
import '../../domain/usecases/mess_apply/mess_apply_impl.dart';
import '../../main.dart';
import '../bloc/mess_bloc/mess_bloc.dart';

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
                            widget.user?.role != "admin" ? "Current mess: ${resMap["mess"]}" : "You are an admin!",
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
                        widget.user?.role != "admin" ? BlocBuilder<MessBloc, MessState>(
                          builder: (context, state) {
                            if (state is Updated) {
                              return const Text(
                                "Applied! Pending Approval",
                              );
                            }
                            return const SizedBox();
                          },
                        ): const SizedBox(),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        MessModel userone = MessModel.fromJson(snapshot.data!.docs[index].data());
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
                                if(widget.user?.role != "admin") {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            const Text(
                                              "Mess Menu",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.bold,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Breakfast : ${userone.messMenu?["Breakfast"]}"),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Lunch : ${userone.messMenu?["Lunch"]}"),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Snacks : ${userone.messMenu?["Snacks"]}"),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Dinner : ${userone.messMenu?["Dinner"]}"),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Close"),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  (userone.currentSize! != 0 ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => UserList(doc: userone.name)
                                ),
                                ): {
                                      showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            const Text(
                                              "This mess is empty!",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight:
                                                FontWeight.w400,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Close"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                )
                                  });}
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
                                      if(widget.user?.role=="admin"){
                                              await db
                                                  .doc(userone.name)
                                                  .delete();
                                        await db1
                                            .doc(userone.name)
                                            .delete();

                                            }else{
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  const Text(
                                                    "Enter an amount you'd want in your mess account",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black87,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextField(
                                                    keyboardType: TextInputType.number,
                                                    obscureText: false,
                                                    onChanged: (val) {
                                                      topUp = int.parse(val);
                                                    },
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        vertical: 0,
                                                        horizontal: 10,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Colors.grey[400]!,
                                                        ),
                                                      ),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Colors.grey[400]!,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  TextButton(
                                                    onPressed: () async {
                                                      final messApply =
                                                          MessApplyImpl(
                                                              user: widget.user,
                                                              mess: userone);
                                                      await messApply
                                                          .applyMessChange(
                                                              topUp!);
                                                      await db2.doc(widget.user?.uid).update({"status": "r"});
                                                      messBloc.add(
                                                          const DataChanged());
                                                      Navigator.pop(context);
                                                      setState(() {});
                                                    },
                                                    child: const Text("Submit"),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      }
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
        const NavigatorBar()
      ],
    );
  }
}



