import 'package:flutter/material.dart';
import 'package:mess_app/presentation/widgets/admin_panel.dart';
import 'package:mess_app/presentation/widgets/go_to_add.dart';
import '../../data/models/user_model.dart';
import '../widgets/mess_panel.dart';
import '../widgets/nav_bar.dart';


class TabWidget3 extends StatelessWidget {
  final UserModel? user;
  const TabWidget3({Key? key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 20,
            child: user?.role == "admin" ? const AdminPanel() : (user?.mess == " " ? const Center(child: GoToAddMess()) : MessPanel(user: user))
        ),
        const NavigatorBar()
      ],
    );
  }
}

