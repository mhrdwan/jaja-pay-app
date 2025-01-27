// screens/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/screens/qris/qris_screen.dart';
import 'package:jajapay/widget/promo_component.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/transfer/transfer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 600; // Cek apakah perangkat adalah mobile

    return Scaffold(
      backgroundColor: JajaColors.background,
      appBar: AppBar(
        backgroundColor: JajaColors.background,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(isMobile ? 8.0 : 16.0), // Padding responsif
          child: Image.asset(
            'assets/images/JAJA PAY.png',
            fit: BoxFit.contain,
          ),
        ),
        leadingWidth: isMobile ? 120 : 150, // Lebar leading responsif
        actions: [
          Image.asset('assets/images/lonceng.png'),
          SizedBox(width: isMobile ? 10 : 20), // Spasi responsif
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: isMobile ? 15 : 30), // Spasi responsif
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 40), // Padding responsif
            child: Container(
              height: isMobile
                  ? screenHeight * 0.25
                  : screenHeight * 0.3, // Tinggi responsif
              width: screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    JajaColors.JajaBlue.B300,
                  ],
                  stops: [0.5, 0.5],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: isMobile ? 25 : 40,
                      top: isMobile ? 40 : 60,
                      right: isMobile ? 25 : 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Saldo anda",
                          style: TextStyle(
                            fontSize:
                                isMobile ? 14 : 18, // Ukuran font responsif
                            color: JajaColors.grey,
                          ),
                        ),
                        Text(
                          "Rp1.240.000",
                          style: TextStyle(
                            fontSize:
                                isMobile ? 20 : 28, // Ukuran font responsif
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: isMobile ? 50 : 80), // Spasi responsif
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildActionButton(
                              "Transfer",
                              "assets/images/transfer_icon.png",
                              onTap: () {
                                // Navigasi ke TransferScreen
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        TransferScreen(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      var curve = Curves.easeOutCubic;
                                      var tween = Tween(
                                              begin: const Offset(1.0, 0.0),
                                              end: Offset.zero)
                                          .chain(CurveTween(curve: curve));
                                      return SlideTransition(
                                        position: animation.drive(tween),
                                        child: ScaleTransition(
                                          scale: Tween<double>(
                                                  begin: 0.9, end: 1.0)
                                              .animate(CurvedAnimation(
                                                  parent: animation,
                                                  curve: curve)),
                                          child: child,
                                        ),
                                      );
                                    },
                                    transitionDuration:
                                        Duration(milliseconds: 400),
                                  ),
                                );
                              },
                            ),
                            _buildActionButton(
                                "Minta", "assets/images/minta.png"),
                            _buildActionButton(
                              "Qris",
                              "assets/images/scan_icon.png",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        BarcodeScannerSimple(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: isMobile ? 40 : 60,
                    right: isMobile ? 25 : 40,
                    child: Container(
                      width: isMobile ? 120 : 150, // Lebar responsif
                      height: isMobile ? 48 : 60, // Tinggi responsif
                      decoration: BoxDecoration(
                        color: JajaColors.JajaYellow.Y300,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text(
                          "+ Topup Saldo",
                          style: TextStyle(
                            fontSize:
                                isMobile ? 12 : 16, // Ukuran font responsif
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: isMobile
                  ? screenHeight * 0.02
                  : screenHeight * 0.03), // Spasi responsif
          Container(
            padding: EdgeInsets.all(isMobile ? 20 : 30), // Padding responsif
            color: Colors.white,
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              crossAxisSpacing: isMobile ? 30 : 40, // Spasi responsif
              childAspectRatio: 0.8,
              children: [
                InkWell(
                  child: _buildGridItem("Transfer", Icons.send),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TransferScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var curve = Curves.easeOutCubic;
                          var tween = Tween(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero)
                              .chain(CurveTween(curve: curve));
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: ScaleTransition(
                              scale: Tween<double>(begin: 0.9, end: 1.0)
                                  .animate(CurvedAnimation(
                                      parent: animation, curve: curve)),
                              child: child,
                            ),
                          );
                        },
                        transitionDuration: Duration(milliseconds: 400),
                      ),
                    );
                  },
                ),
                _buildGridItem("Minta", Icons.receipt),
                _buildGridItem("Transfer", Icons.send),
                _buildGridItem("Qris", Icons.scanner),
                _buildGridItem("Transfer", Icons.send),
                _buildGridItem("Transfer", Icons.send),
                _buildGridItem("Transfer", Icons.send),
                _buildGridItem("Transfer", Icons.send),
              ],
            ),
          ),
          SizedBox(height: isMobile ? 15 : 30), // Spasi responsif
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 40), // Padding responsif
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Promo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 16 : 24, // Ukuran font responsif
                  ),
                ),
              ],
            ),
          ),
          PromoComponent(),
        ],
      ),
    );
  }

  // Widget untuk membuat tombol aksi (Transfer, Minta, Qris)
  Widget _buildActionButton(String title, String iconPath,
      {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap, // Fungsi onTap untuk navigasi
      child: Column(
        children: [
          Image.asset(iconPath),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width *
                  0.035, // Ukuran font responsif
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk membuat item grid
  Widget _buildGridItem(String title, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: JajaColors.JajaBlue.B300,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width *
                0.035, // Ukuran font responsif
          ),
        ),
      ],
    );
  }
}
