import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';

class TopupDetailScreen extends StatefulWidget {
  final String? nameBank;
  final String? imageBank;
  const TopupDetailScreen({super.key, this.imageBank, this.nameBank});

  @override
  State<TopupDetailScreen> createState() => _TopupDetailScreenState();
}

class _TopupDetailScreenState extends State<TopupDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Top up',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
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
      body: Padding(
        // Hapus Expanded di sini
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              "Virtual Account Via",
              style: TextStyle(color: JajaColors.grey, fontSize: 16),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      '${widget.imageBank}',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.03,
                  ),
                  Text(
                    '${widget.nameBank}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Min Rp10.000",
                    style: TextStyle(
                        color: JajaColors.JajaBlue.B300, fontSize: 12),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                ],
              ),
            ),
            Divider(
              color: Color(0xFFEAEAEA),
              thickness: 1,
              height: 10,
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            _nomorVirtualAccount(
                screenHeight: screenHeight, screenWidth: screenWidth),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            _caraBayar(screenHeight: screenHeight)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (context, animation, secondaryAnimation) =>
              //         ReviewScreen(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       var curve = Curves.easeOutCubic;
              //       var tween =
              //           Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
              //               .chain(CurveTween(curve: curve));
              //       return SlideTransition(
              //         position: animation.drive(tween),
              //         child: ScaleTransition(
              //           scale: Tween<double>(begin: 0.9, end: 1.0).animate(
              //               CurvedAnimation(parent: animation, curve: curve)),
              //           child: child,
              //         ),
              //       );
              //     },
              //     transitionDuration: Duration(milliseconds: 400),
              //   ),
              // );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: JajaColors.JajaBlue.B300, strokeAlign: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              "Bantuan",
              style: TextStyle(color: JajaColors.JajaBlue.B300, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}

class _nomorVirtualAccount extends StatelessWidget {
  const _nomorVirtualAccount({
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.1,
      width: screenWidth,
      decoration: BoxDecoration(
          border: Border.all(
            color: JajaColors.JajaBlue.B75,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomor Virtual Account",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: JajaColors.grey),
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            Row(
              children: [
                Text(
                  '1239081231298392',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'Copy',
                  style: TextStyle(color: JajaColors.JajaBlue.B300),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _caraBayar extends StatelessWidget {
  const _caraBayar({
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cara Pembayaran Virtual Akun Mandiri :",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Text(
          "1. Buka Aplikasi Livin’ by Mandiri",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 13),
            children: [
              TextSpan(
                text: "2. Pilih menu ",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: "Pembayaran",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 13),
            children: [
              TextSpan(
                text: "3. Pilih ",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: "Virtual Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Text(
          "4. Masukkan Virtual Account anda",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Text(
          "5. Lalu lakukan pengecekkan terhadap nomor VA",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 13),
            children: [
              TextSpan(
                text: "6. Klik tombol ",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: "Bayar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Text(
          "7. Selesai",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        ),
      ],
    );
  }
}
