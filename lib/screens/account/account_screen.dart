// screens/account/account_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/login/login_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JajaColors.background,
      body: SizedBox(
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
                          style:
                              TextStyle(fontSize: 16, color: JajaColors.grey),
                        ),
                        Text(
                          "0857123900321",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
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
                              Text("Transfer")
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/minta.png'),
                              Text("Minta")
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/scan_icon.png'),
                              Text("Ubah Pin")
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
              height: MediaQuery.of(context).size.height * 0.25,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
                            fontSize: 16,
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
                        Text(
                          "Lupa Pin",
                          style: TextStyle(
                            fontSize: 16,
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
                          "assets/images/bio_icon.png",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Smart Login",
                          style: TextStyle(
                            fontSize: 16,
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
              height: MediaQuery.of(context).size.height * 0.35,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
                              fontSize: 16,
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
                              fontSize: 16,
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
                              fontSize: 16,
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
                              fontSize: 16,
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
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
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
    );
  }
}
