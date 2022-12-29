import 'package:flutter/material.dart';

import '../app_routes.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [        
        ListTile(
          leading: Icon(Icons.person),
          title: Text("My account"),
        ),
        ListTile(
          leading: Icon(Icons.schedule),
          title: Text("New Appointment"),
        ),
        ListTile(
          leading: Icon(Icons.groups),
          title: Text("Customers"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.settings),
        )
      ],
    );
  }
}
