import 'package:flutter/material.dart';
import 'package:mess_app/presentation/screens/add_mess.dart';
import '../../core/routes.dart';
import '../../data/models/user_model.dart';
import '../../main.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import '../widgets/dashboard.dart';
import '../widgets/mess_list.dart';
import '../widgets/services_screen.dart';

class UserScreen extends StatefulWidget {
  final UserModel? user;
  const UserScreen({Key? key, required this.user}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _currentIndex == 0 ? "Tab 1" : (_currentIndex == 1 ? "Tab 2" : "Tab 3")),
        actions: [
          widget.user?.role=="student"? IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddMessScreen(),
              ),
            );
          }, icon: const  Icon(Icons.add), tooltip: "Add Mess",) : const SizedBox(),
          TextButton(
            onPressed: () {
              authBloc.add(const SignOutEvent());
              Navigator.of(context).popAndPushNamed(AppRoutes.signIn);
            },
            child: const Text("Sign Out"),
          ),
        ],
      ),
      body: [
        TabWidget1(user: widget.user), // Pass user to TabWidget1
        TabWidget2(),
        const TabWidget3(),
      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tab 3',
          ),
        ],
      ),
    );
  }
}
