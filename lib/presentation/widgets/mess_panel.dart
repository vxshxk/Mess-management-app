import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../data/models/user_model.dart';
import '../../main.dart';
import '../bloc/validator_bloc/val_bloc.dart';

class MessPanel extends StatelessWidget {
  final UserModel? user;
  MessPanel({super.key, required this.user});

  int? messBal;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              stream: db2.doc(user?.uid).snapshots(),
              builder: (context, snapshot) {
                return BlocListener<ValBloc, ValState>(
                 listener: (context, state) {
                   if(state is SlightlySufficient){
                     ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(content: Text("Low balance! Please recharge as soon as possible", style: TextStyle(color: Colors.deepPurple),), backgroundColor: Colors.white,)
                     );
                   }
                 },
                  child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
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
                    if(resMap["messBalance"]<=0) {
                      db2.doc(user?.uid).update({"messBalance": 0});
                      valBloc.add(const No());
                    } else if(resMap["messBalance"]<=100 && resMap["messBalance"]<=100) {
                      valBloc.add(const Soon());
                    }else{
                      valBloc.add(const Yes());
                    }
                    return Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurple[300]!,
                        ),
                      ),
                      child: ListTile(
                        title: BlocBuilder<ValBloc, ValState>(
                        builder: (context, state) {
                          if(state is InSufficient){
                            return const Text(
                              "Insufficient balance, please recharge!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            );
                          }
                          return Text(
                          "Current balance: ${resMap["messBalance"]}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        );
                        },
                      ),
                      ),
                    );
                  },
                ),
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
                      if(messBal!=null){
                        db2.doc(user?.uid).update(
                            {"messBalance": FieldValue.increment(messBal!)});
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Please enter a valid amount!"))
                        );
                      }
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
          ListTile(
              leading: Text(
                "Breakfast:  ₹20",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              trailing: BlocBuilder<ValBloc, ValState>(
                builder: (context, state) {
                  if(state is InSufficient){
                    return const Icon(Icons.warning_amber);
                  }
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        border: Border.all()
                    ),
                    child: IconButton(
                        onPressed: () async {
                          db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-20)});
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Payment Successful", style: TextStyle(color: Colors.deepPurple),),duration: Duration(milliseconds: 10), backgroundColor: Colors.white,)
                          );
                        },
                        icon: const Icon(Icons.currency_rupee)
                    ),
                  );
                },
              )

          ),
          ListTile(
              leading: Text(
                "Lunch:  ₹40",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              trailing: BlocBuilder<ValBloc, ValState>(
                builder: (context, state) {
                  if(state is InSufficient){
                    return const Icon(Icons.warning_amber);
                  }
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        border: Border.all()
                    ),
                    child: IconButton(
                        onPressed: () async {
                          db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-40)});
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Payment Successful", style: TextStyle(color: Colors.deepPurple),),duration: Duration(milliseconds: 10), backgroundColor: Colors.white,)
                          );
                        },
                        icon: const Icon(Icons.currency_rupee)
                    ),
                  );
                },
              )

          ),
          ListTile(
              leading: Text(
                "Snacks:  ₹30",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              trailing: BlocBuilder<ValBloc, ValState>(
                builder: (context, state) {
                  if(state is InSufficient){
                    return const Icon(Icons.warning_amber);
                  }
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        border: Border.all()
                    ),
                    child: IconButton(
                        onPressed: () async {
                          db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-30)});
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Payment Successful", style: TextStyle(color: Colors.deepPurple),),duration: Duration(milliseconds: 10), backgroundColor: Colors.white,)
                          );
                        },
                        icon: const Icon(Icons.currency_rupee)
                    ),
                  );
                },
              )
          ),
          ListTile(
              leading: Text(
                "Dinner:  ₹50",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[400],
                ),
              ),
              trailing: BlocBuilder<ValBloc, ValState>(
                builder: (context, state) {
                  if(state is InSufficient){
                    return const Icon(Icons.warning_amber);
                  }
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        border: Border.all()
                    ),
                    child: IconButton(
                        onPressed: () async {
                          db2.doc(user?.uid).update({"messBalance": FieldValue.increment(-50)});
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Payment Successful", style: TextStyle(color: Colors.deepPurple),),duration: Duration(milliseconds: 10), backgroundColor: Colors.white,)
                          );
                        },
                        icon: const Icon(Icons.currency_rupee)
                    ),
                  );
                },
              )

          ),
        ],
      ),
    );
  }
}


