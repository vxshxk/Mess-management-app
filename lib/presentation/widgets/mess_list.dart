import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/domain/usecases/mess_apply/mess_apply_impl.dart';
import 'package:mess_app/main.dart';
import '../../data/models/mess_model.dart';
import '../../data/models/user_model.dart';
import '../bloc/mess_bloc/mess_bloc.dart';

class TabWidget2 extends StatefulWidget {
  final UserModel? user;

  TabWidget2({Key? key, required this.user}) : super(key: key);

  @override
  State<TabWidget2> createState() => _TabWidget2State();
}

class _TabWidget2State extends State<TabWidget2> {
  String? topUp;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
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
              Row(
                children: [
                  BlocBuilder<MessBloc, MessState>(
                    builder: (context, state) {
                      if (state is Updated) {
                        return const Text(
                          "Applied! Pending Approval",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
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
                    child: ListTile(
                      onTap: () async {
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
                                      topUp = val;
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
                                    },
                                    child: const Text("Submit"),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
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
                             await FirebaseFirestore.instance.collection('Mess').doc(userone.name).delete();
                            },
                            icon: const Icon(Icons.delete),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
