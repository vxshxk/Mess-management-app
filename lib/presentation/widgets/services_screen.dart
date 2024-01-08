import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/presentation/widgets/dashboard.dart';
import '../../data/models/user_model.dart';
import '../../main.dart';
import '../bloc/nav_bloc/nav_bloc.dart';

final db = FirebaseFirestore.instance.collection('Waitinglist');
final db1 = FirebaseFirestore.instance.collection('Mess');
final db2 = FirebaseFirestore.instance.collection('Users');
class TabWidget3 extends StatelessWidget {
  final UserModel? user;
  const TabWidget3({Key? key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 20,
            child: user?.role == "admin" ? const AdminPanel() : (user?.mess == " " ? const Center(child: GoToAddMess()) : MessPanel(user: user))
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

class AdminPanel extends StatelessWidget {
  const AdminPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: db.snapshots(),
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

          return SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                String mess = snapshot.data!.docs[index].id;
                int applicants = snapshot.data!.docs[index].data().length;
                return Material(
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepPurple[300]!,
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        mess,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Applicants: $applicants",
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ApplicantList(doc: mess),
                            ),
                          );
                        },
                        icon: const Icon(Icons.show_chart_rounded),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ApplicantList extends StatelessWidget {
  final String? doc;

  ApplicantList({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: db.doc(doc).get(),
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

        return Column(
          children: [
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: resMap.length,
                itemBuilder: (context, index) {
                  String idx = index.toString();
                  String name = resMap[idx]["name"];
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
                                name,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Initial TopUp: ${resMap[idx]["topUp"]}",
                              ),
                              trailing: IconButton(
                                onPressed: () async {
                                  final result=  await FirebaseFirestore.instance
                                      .collection('Users')
                                      .doc(resMap[idx]["uid"])
                                      .get();
                                  Map<String, dynamic> res= result.data() as Map<String, dynamic>;
                                  if(res["mess"]!=" "){
                                    await ReplacePrevMess(res, resMap, idx);
                                  }
                                  await changeMess(resMap, idx);
                                  await deleteRequest(idx);
                                },
                                icon: const Icon(Icons.done_outline_sharp),
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: IconButton(
                              onPressed: () async {
                                await deleteRequest(idx);
                              },
                              icon: const Icon(Icons.cancel_outlined),
                              color: Colors.red,
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: SizedBox()
                          )
                        ],
                      ),
                    ),
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
                    child: const Text("   ")
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
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close", style: TextStyle(color: Colors.white),)),
                ),
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Text("   ")
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
              ),
            )

          ],
        );
      },
    );
  }

  Future<void> changeMess(Map<String, dynamic> resMap, String idx) async {
    db2.doc(resMap[idx]["uid"]).update({"mess": doc, "messBalance" : resMap[idx]["topUp"]});
    DocumentSnapshot snapshot = await db1.doc(doc).get();
    List<String> members = List.from(((snapshot.data()) as Map<String, dynamic>)["members"] ?? []);
    print(members);
    int size = members.length;
    print(size);
    db1.doc(doc).update({"members": FieldValue.arrayUnion([resMap[idx]["uid"]]), "currentSize" : size.toString()});
  }

  Future<void> deleteRequest(String idx) async {
    await db.doc(doc).update(<String, dynamic>{
      idx : FieldValue.delete(),
    });
  }

  Future<void> ReplacePrevMess(Map<String, dynamic> res, Map<String, dynamic> resMap, String idx) async {
    print(res["mess"]!=" ");
    print(doc);
    DocumentSnapshot snapshot = await db1.doc(doc).get();
    List<String> members = List.from(((snapshot.data()) as Map<String, dynamic>)["members"] ?? []);
    int size = members.length - 1;
    print(members);
    members.remove(resMap[idx]["uid"]);
    print(members);
    await db1.doc(doc).update({"members": members, "currentSize" : size.toString()});
  }
}


class MessPanel extends StatelessWidget {
  final UserModel? user;
  MessPanel({super.key, required this.user});

  int messBal =0 ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              stream: db2.doc(user?.uid).snapshots(),
              builder: (context, snapshot) {
                return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  future: db2.doc(user?.uid).get(),
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
                          "Current balance: ${resMap["messBalance"]}",
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
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Recharge",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Add amount to mess                                                       ",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black87
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
            child: Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      onChanged: (val) {
                        messBal = int.parse(val);
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 0,
                              horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[400]!
                            ),
      
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[400]!)
                          )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-messBal)});
                    },
                    icon: const Icon(Icons.account_balance_wallet_outlined),
                    color: Colors.deepPurple[400],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Spend",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Breakfast:  ₹20",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all()
                ),
                child: IconButton(
                    onPressed: () async {
                      db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-20)});
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Payment Successful"))
                      );
                    },
                    icon: const Icon(Icons.currency_rupee)
                ),
              )
      
            ],
          ),
          Row(
            children: [
              Text(
                "Lunch:  ₹40",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all()
                ),
                child: IconButton(
                    onPressed: () async {
                      db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-40)});
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Payment Successful"))
                      );
                    },
                    icon: const Icon(Icons.currency_rupee)
                ),
              )
      
            ],
          ),
          Row(
            children: [
              Text(
                "Snacks:  ₹30",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              Container(decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  border: Border.all()
              ),
      
                child: IconButton(
                    onPressed: () async {
                      db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-30)});
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Payment Successful"))
                      );
                    },
                    icon: const Icon(Icons.currency_rupee)
                ),
              )
      
      
            ],
          ),
          Row(
            children: [
              Text(
                "Dinner:  ₹50",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all()
                ),
                child: IconButton(
                    onPressed: () async {
                      db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-50)});
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Payment Successful"))
                      );
                    },
                    icon: const Icon(Icons.currency_rupee)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


