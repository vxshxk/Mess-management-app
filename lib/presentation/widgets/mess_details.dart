import 'package:flutter/material.dart';

import '../../data/models/user_model.dart';

class MessDetails extends StatelessWidget {
  final UserModel? user;
  MessDetails({
    super.key, required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
            child: Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Mess Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 8,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 15, 15),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 15.0,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 100.0,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  Text("Name: ${user?.mess}"),
                                  const SizedBox(),
                                  const Text("Roll No.: "),
                                  const SizedBox(),
                                  const Text("Year: "),
                                  const SizedBox(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3, child: Text("Placeholder")),
                            Expanded(
                                flex: 5, child: Text("Placeholder"))
                          ],
                        ),
                      )
                    ],
                  ),
                ))),
      ],
    );
  }
}