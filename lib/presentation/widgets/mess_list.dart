import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_app/domain/usecases/mess_apply/mess_apply_impl.dart';
import 'package:mess_app/main.dart';
import 'package:mess_app/presentation/widgets/dashboard.dart';
import '../../core/email_validator.dart';
import '../../data/models/mess_model.dart';
import '../../data/models/user_model.dart';
import '../bloc/mess_bloc/mess_bloc.dart';

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
          Row(
            children: [
                BlocBuilder<MessBloc, MessState>(
                builder: (context, state) {
                  if(state is Updated){
                    return const Text(
                      "Applied! Pending Aprroval",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    );
                  }
                  return MessDetails();
                },
              ),
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
            ],
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
                  trailing: BlocBuilder<MessBloc, MessState>(
                    builder: (context, state) {
                      if (state is Updated) {
                        return const SizedBox();
                      }
                      return IconButton(
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
                                        contentPadding: const EdgeInsets
                                            .symmetric(
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
                                        MessApplyImpl(
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
                        icon: const Icon(Icons.add),
                      );
                    },
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
