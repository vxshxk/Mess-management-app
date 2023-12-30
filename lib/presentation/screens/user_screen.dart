import 'package:flutter/material.dart';
import '../../core/routes.dart';
import '../../data/models/user_model.dart';
import '../../main.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import '../widgets/dashboard.dart';
import '../widgets/mess_list.dart';
import '../widgets/services_screen.dart';

class UserScreen extends StatefulWidget {
  final UserModel? user;
  const UserScreen({super.key,required this.user});

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const TabWidget1(),
    const TabWidget2(),
    const TabWidget3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentIndex == 0 ? "Tab 1" : (_currentIndex == 1? "Tab 2" : "Tab 3")),
        actions: [
          TextButton(
              onPressed: () {
                authBloc.add(SignOutEvent());
                Navigator.of(context)
                    .popAndPushNamed(AppRoutes.signIn);
              },
              child: const Text("Sign Out")),
        ],
      ),
      body: _tabs[_currentIndex],
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
