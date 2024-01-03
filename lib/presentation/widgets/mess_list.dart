import 'package:flutter/material.dart';
import 'package:mess_app/domain/usecases/mess_apply/mess_apply_impl.dart';
import '../../core/email_validator.dart';
import '../../data/models/mess_model.dart';
import '../../data/models/user_model.dart';

List<MessModel> users = [];

class TabWidget2 extends StatefulWidget {
  final UserModel? user;

  TabWidget2({super.key, required this.user});

  @override
  State<TabWidget2> createState() => _TabWidget2State();
}

class _TabWidget2State extends State<TabWidget2> {
  String? topUp;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IconButton(
            onPressed: () async {
              try {
                await getAllDocuments(list: users);
              } catch (e) {
                print(e.toString());
              }
              setState(() {
                print(users);
              });
            },
            icon: const Icon(Icons.refresh),
          ),
          Column(
            children: users.map((userone) {
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
                    userone.name!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Capacity: ${userone.currentSize!}/${userone.size}",
                  ),
                  trailing: IconButton(
                    onPressed: () {
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
                                    final messApply =
                                    MessApplyImpl(user: widget.user, mess: userone);
                                    await messApply.applyMessChange(topUp!);
                                    Navigator.pop(context); // Close the dialog
                                  },
                                  child: const Text("Submit"),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.add),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
