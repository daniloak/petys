import 'package:flutter/material.dart';
import 'package:petys/screens/appointment_customer_screen.dart';
import 'package:petys/screens/appointment_detail_screen.dart';
import 'package:petys/screens/settings_screen.dart';

import 'app_routes.dart';
import 'screens/appointment_date_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PetysApp());
}

class PetysApp extends StatelessWidget {
  const PetysApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
        canvasColor: Colors.lightGreen.shade50
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.settings: (context) => const SettingsScreen(),
        AppRoutes.appointments_detail_screen: (context) => const AppointmentDetail(),
        AppRoutes.appointments_customer_screen: (context) => const AppointmentCustomerScreen(),
        AppRoutes.appointments_date_screen: (context) => const AppointmentDateScreen(),
      },
    );
  }
}