// components/bottombar_components.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/qris/qris_screen.dart';

class BottomBarComponent extends StatefulWidget {
  final Function(int)? onTap;
  final int currentIndex;

  const BottomBarComponent({
    super.key,
    this.onTap,
    required this.currentIndex,
  });

  @override
  State<BottomBarComponent> createState() => _BottomBarComponentState();
}

class _BottomBarComponentState extends State<BottomBarComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BottomNavigationBar(
          currentIndex: widget.currentIndex,
          onTap: widget.onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: JajaColors.JajaBlue.B300,
          backgroundColor: JajaColors.background,
          unselectedItemColor: JajaColors.JajaBlue.B75,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/history.png"),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/wallet.png"),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/profile.png"),
              label: 'Account',
            ),
          ],
        ),
        Positioned(
          top: -20,
          left: 0,
          right: 0,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BarcodeScannerSimple()));
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: JajaColors.JajaYellow.Y300,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/qris.png"),
                    Text(
                      "Qris",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12, // Ukuran teks lebih kecil
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
