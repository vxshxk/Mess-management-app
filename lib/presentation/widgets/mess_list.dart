import 'package:flutter/material.dart';
import '../../core/email_validator.dart';
import '../../data/models/mess_model.dart';

List<MessModel> users = [];
class TabWidget2 extends StatefulWidget {
  TabWidget2({super.key});

  @override
  State<TabWidget2> createState() => _TabWidget2State();
}

class _TabWidget2State extends State<TabWidget2> {
  Widget build(BuildContext context) {



      return SingleChildScrollView(
          child: Column(
            children: [
              IconButton(onPressed: () async{
                try{
                  await getAllDocuments(list: users);
                } catch(e) {
                  print(e.toString());
                }
                setState(() {
                  print(users);
                });
              }, icon: const Icon(Icons.refresh)),
              Column(
                    children:
                    users.map((userone){
                      return Container(
                        child: ListTile(
                          title: Text(userone.name!),
                          subtitle: Text("Address: " + userone.email!),
                        ),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple[300]!
                          )
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
      );
    }
}