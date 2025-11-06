import 'package:flutter/material.dart';
import 'package:warranty/screens/add_screen.dart';
import 'package:warranty/screens/home_screen.dart';
import 'package:warranty/screens/settings_screen.dart';

void main() {
  runApp(const WarrantyApp());
}

class WarrantyApp extends StatelessWidget {
  const WarrantyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warranty',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const WarrantyHome(),
    );
  }
}

class WarrantyHome extends StatefulWidget {
  const WarrantyHome({super.key});

  @override
  State<WarrantyHome> createState() => _WarrantyHomeState();
}

class _WarrantyHomeState extends State<WarrantyHome> {
   int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    AddScreen(),
    SettingsScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex:currentIndex,
        onDestinationSelected: (index){
          setState(()=> currentIndex = index);
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.add), label: 'Adicionar'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Definições'),
        ],
        ),
      );
    
  }
}
