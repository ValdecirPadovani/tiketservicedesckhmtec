import 'package:flutter/material.dart';
import 'package:tiketservicedesckhmtec/pages/base/base_screen.dart';
import 'package:tiketservicedesckhmtec/pages/ticket/ticket_registrator.dart';

import 'pages/customer/customer_registrator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Controle de chamados",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
    );
  }
}
