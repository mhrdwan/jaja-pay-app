import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/login/login_screen.dart';
import 'package:jajapay/screens/pin/change_pin.dart';
import 'package:jajapay/screens/pin/forget_pin_screen.dart';
import 'package:jajapay/webview/kebijakan_webview.dart';
import 'package:jajapay/webview/pusat_bantuan_webview.dart';
import 'package:jajapay/webview/syarat_ketentuan.dart';
import 'package:jajapay/webview/tentang_jajapay.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  double getResponsiveFontSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseWidth = 375.0; 
    double scaleFactor = screenWidth / baseWidth;
    scaleFactor = scaleFactor.clamp(0.8, 1.2); 
    return baseSize * scaleFactor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JajaColors.background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.9,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Naufal Arkan L",
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(context, 16),
                              color: JajaColors.grey
                            ),
                          ),
                          Text(
                            "0857123900321",
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(context, 24),
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        height: 2,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: JajaColors.JajaBlue.B300,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/images/transfer_icon.png'),
                                Text(
                                  "Transfer",
                                  style: TextStyle(
                                    fontSize: getResponsiveFontSize(context, 14)
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/images/minta.png'),
                                Text(
                                  "Minta",
                                  style: TextStyle(
                                    fontSize: getResponsiveFontSize(context, 14)
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/images/scan_icon.png'),
                                Text(
                                  "Ubah Pin",
                                  style: TextStyle(
                                    fontSize: getResponsiveFontSize(context, 14)
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.295,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Akun & Keamanan",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: getResponsiveFontSize(context, 20)
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/setting_icon.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Setting Akun",
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(context, 16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/tanya_icon.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                               Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) =>
                                      ChangePinScreen(),
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
                            child: Text(
                              "Change Pin",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/tanya_icon.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                               Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) =>
                                      ForgetPinScreen(),
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
                            child: Text(
                              "Lupa Pin",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/bio_icon.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Smart Login",
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(context, 16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lainnya",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: getResponsiveFontSize(context, 20)
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TentangJajaPayWebview(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/setting_icon.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Tentang Jaja Pay",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SyaratKetentuan(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/tanya_icon.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Syarat & Ketentuan",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KebijakanWebview(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/bio_icon.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Kebijakan Privasi",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PusatBantuanWebview(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/bio_icon.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Pusat Bantuan",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) => LoginScreen()));
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/keluar_icon.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Log out Akun",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context, 16),
                                fontWeight: FontWeight.w400,
                                color: Colors.red
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}