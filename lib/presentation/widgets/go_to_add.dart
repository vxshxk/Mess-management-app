
import 'package:flutter/material.dart';
import 'package:mess_app/presentation/bloc/nav_bloc/nav_bloc.dart';

import '../../main.dart';

class GoToAddMess extends StatelessWidget {
  const GoToAddMess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            flex: 5,
            child: Center(child: Text("You haven't registered to any mess yet,"))
        ),
        Expanded(
          flex: 1,
          child: TextButton(
              onPressed: () {
                navBloc.add(const SecondPage());
              },
              child: const Text("Register for a mess")
          ),
        ),
        const SizedBox(height: 120,)
      ],
    );
  }
}

