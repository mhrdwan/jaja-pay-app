// screens/review/review_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/rincian/rincian_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Review Transfer",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: JajaColors.JajaBlue.B50,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back,
              color: JajaColors.JajaBlue.B300,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Container(
                height: screenHeight * 0.45,
                width: screenWidth,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: JajaColors.JajaBlue.B75,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bank Tujuan",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "Bank Mandiri",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Nama Tujuan",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "M Hasyim Ridwan",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Nomor Rekening Tujuan",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "1289093239812",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Nominal",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "Rp250.000",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Tipe Transfer",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "Bi-Fast",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Biaya Transfer",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "Rp2.500",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        "Catatan",
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: JajaColors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.001,
                      ),
                      Text(
                        "-",
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Container(
              height: 1,
              margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              color: JajaColors.JajaBlue.B75,
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: JajaColors.JajaBlue.B400,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nominal Transfer"),
                      Text("Rp250.000"),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.008),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Biaya Transfer"),
                      Text("Rp2.500"),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.008),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Transaksi"),
                      Text("Rp252.500"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: SizedBox(
          width: screenWidth,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      RincianScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    var curve = Curves.easeOutCubic;
                    var tween =
                        Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                            .chain(CurveTween(curve: curve));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: ScaleTransition(
                        scale: Tween<double>(begin: 0.9, end: 1.0).animate(
                            CurvedAnimation(parent: animation, curve: curve)),
                        child: child,
                      ),
                    );
                  },
                  transitionDuration: Duration(milliseconds: 400),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: JajaColors.JajaBlue.B300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              "Transfer Sekarang",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
