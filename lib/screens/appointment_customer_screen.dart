import 'package:flutter/material.dart';

import '../app_routes.dart';

class AppointmentCustomerScreen extends StatelessWidget {
  const AppointmentCustomerScreen({super.key});

  void _onCustomerSelected(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.appointments_date_screen,
        arguments: "customer argument");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration:
              const InputDecoration(hintText: "Enter the customer name"),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                      horizontalTitleGap: 0,
                      title: Text("asdasd"),
                      onTap: () => _onCustomerSelected(context));
                }))
      ],
    ));
  }
}
