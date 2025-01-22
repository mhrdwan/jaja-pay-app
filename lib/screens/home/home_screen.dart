// screens/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/components/promo_component.dart';
import 'package:jajapay/constans/color.dart';

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

    return Scaffold(
      backgroundColor: JajaColors.background,
      appBar: AppBar(
        backgroundColor: JajaColors.background,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/JAJA PAY.png',
            fit: BoxFit.contain,
          ),
        ),
        leadingWidth: 120,
        actions: [
          Image.asset('assets/images/lonceng.png'),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                height: screenHeight * 0.25,
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
                // Ganti container utama dengan Stack
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 40, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Saldo anda",
                            style:
                                TextStyle(fontSize: 14, color: JajaColors.grey),
                          ),
                          Text(
                            "Rp1.240.000",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                      "assets/images/transfer_icon.png"),
                                  SizedBox(height: 5),
                                  Text(
                                    "Transfer",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/images/minta.png"),
                                  SizedBox(height: 5),
                                  Text(
                                    "Minta",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/images/scan_icon.png"),
                                  SizedBox(height: 5),
                                  Text(
                                    "Qris",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 25,
                      child: Container(
                        width: 120,
                        height: 48,
                        decoration: BoxDecoration(
                          color: JajaColors.JajaYellow.Y300,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            "+ Topup Saldo",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              // mainAxisSpacing: 1,
              crossAxisSpacing: 30,
              childAspectRatio: 0.8,
              children: [
                _buildGridItem("Transfer", Icons.send),
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
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Promo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
          PromoComponent(),
        ],
      ),
    );
  }
}

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
          fontSize: 14,
        ),
      ),
    ],
  );
}
