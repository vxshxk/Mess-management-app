import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:mess_app/domain/usecases/add_mess/add_mess_impl.dart';
import '../../data/models/mess_model.dart';
import '../bloc/auth_bloc/auth_bloc.dart';


class AddMessScreen extends StatelessWidget {
  const AddMessScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String name = "";
    String current = "0";
    String email = "";
    String total = "0";
    Map<String, dynamic> menu= {"" : " "};
    return BlocListener<AuthBloc,AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: false,
                    onChanged: (val) {
                      name = val;
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
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Total seats",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    onChanged: (val) {
                      total = val;
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
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Contact email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: false,
                    onChanged: (val) {
                      email = val;
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
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 20),
              Padding(padding:
              const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () async {
                      if (1==1) {
                        var box = Hive.box('MessData');
                        final MessModel mess = MessModel(currentSize: current, name: name, size: total, email: email, messMenu: menu);
                        box.put(mess.name, mess);
                        final messData =  MessDataImpl(mess: mess);
                        await messData.setMessData();
                        Navigator.of(context).pop();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Invalid Credentials"),
                            )
                        );
                      }
                    },
                    color: Colors.deepPurple[400],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: const Text(
                      "Submit", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,

                    ),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}