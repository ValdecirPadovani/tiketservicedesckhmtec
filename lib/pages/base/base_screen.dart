import 'package:flutter/material.dart';
import 'package:tiketservicedesckhmtec/pages/customer/customer_registrator.dart';
import 'package:tiketservicedesckhmtec/pages/ticket/ticket_registrator.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int   currentIdex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          const CustomerRegistrator(),
          TicketRegistrator(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdex,
        onTap: (index){
          setState(() {
            currentIdex = index;
            pageController.jumpToPage(currentIdex);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_business), label: "Cadstro de cliente"),
          BottomNavigationBarItem(icon: Icon(Icons.add_business), label: "Novo tiket"),
        ],
      ),

    );
  }
}
