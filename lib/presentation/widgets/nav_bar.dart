import 'package:flutter/material.dart';
import 'package:mess_app/main.dart';
import 'package:mess_app/presentation/bloc/nav_bloc/nav_bloc.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
              child: IconButton(
                onPressed: () {
                  navBloc.add(const FirstPage());
                },
                icon: const Icon(Icons.home),
                color: Colors.deepPurple[400],
              )
          ),
          Expanded(
              child: IconButton(
                onPressed: () {
                  navBloc.add(const SecondPage());
                },
                icon: const Icon(Icons.home),
                color: Colors.deepPurple[400],
              )
          ),
          Expanded(
              child: IconButton(
                onPressed: () {
                  navBloc.add(const ThirdPage());
                },
                icon: const Icon(Icons.home),
                color: Colors.deepPurple[400],
              )
          ),

        ],
      ),
    );
  }
}

