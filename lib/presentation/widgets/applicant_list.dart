import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../data/models/mess_model.dart';
import '../../main.dart';

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
                                  final res = await db1.doc(doc).get();
                                  MessModel mess = MessModel.fromJson(
                                      res.data() as Map<String, dynamic>);
                                  if(mess.currentSize!=mess.size ){
                                    await acceptRequest(resMap, idx);
                                    Navigator.of(context).pop();
                                  }else{
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                            title: Center(
                                              child: Text(
                                                "Alert",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                            content: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("This mess is already full!"),
                                              ],
                                            )
                                        );
                                      },
                                    );
                                  }
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
                                await db2.doc(resMap[idx]["uid"]).update({"status": "d"});
                                await deleteRequest(idx, doc!);
                                Navigator.of(context).pop();
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

  Future<void> acceptRequest(Map<String, dynamic> resMap, String idx) async {
    if (resMap[idx]["current"] != " ") {
      await db1
          .doc(resMap[idx]["current"])
          .update({
        "members": FieldValue.arrayRemove(
            [resMap[idx]["uid"]]),
        "currentSize": FieldValue.increment(-1)
      });
    }
    await db2.doc(resMap[idx]["uid"]).update({
      "mess": doc,
      "messBalance": FieldValue.increment(resMap[idx]["topUp"])
    });
    await db1.doc(doc).update({
      "members": FieldValue.arrayUnion(
          [resMap[idx]["uid"]]),
      "currentSize": FieldValue.increment(1)
    });
    await db2
        .doc(resMap[idx]["uid"])
        .update({"status": "s"});
    await deleteRequest(idx, doc!);
  }

  Future<void> deleteRequest(String idx, String doc) async {
    await db.doc(doc).update(<String, dynamic>{
      idx : FieldValue.delete(),
    });
  }
}

