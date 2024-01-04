import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../data/models/mess_model.dart';
import '../bloc/mess_bloc/mess_bloc.dart';

class TabWidget3 extends StatelessWidget {
  const TabWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('Waitinglist').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SpinKitRotatingCircle(
            color: Colors.deepPurple[400],
            size: 50.0,
          );
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return const Text("Error loading data"); // Handle error state
        }

        return SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              String mess = snapshot.data!.docs[index].id;
              int applicants = snapshot.data!.docs[index].data().length;
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
                    mess,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Applicants: $applicants",
                  ),
                  trailing: IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(Icons.show_chart_rounded),
                      )
                ),
              );
            },
          ),
        );
      },
    );
  }
}
