// main_layout.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/account/account_screen.dart';
import 'package:jajapay/screens/home/home_screen.dart';
import 'package:jajapay/screens/history/history_screen.dart';
import 'package:jajapay/components/bottombar_components.dart';
import 'package:jajapay/screens/wallet/wallet_screen-.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HistoryScreen(),
    Container(),
    WalletScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JajaColors.background,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomBarComponent(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
