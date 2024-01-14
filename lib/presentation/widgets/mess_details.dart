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
          flex: 3,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
            child: Text(
              "Mess Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
            flex: 24,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 15, 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Text("MESS"),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${user?.mess!}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.deepPurple[400]
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text("MESS BALANCE"),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "${user?.messBalance!}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.deepPurple[400]
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: SizedBox()
                          ),
                          Expanded(
                            flex: 2,
                            child: SizedBox()
                          ),
                        ],
                      ),
                    ],
                  ),
                ))),
      ],
    );
  }
}