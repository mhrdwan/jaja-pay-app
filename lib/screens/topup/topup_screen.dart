import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/topup/topup_detail_screen.dart'; // Pastikan import ini sesuai dengan path Anda

class TopupScreen extends StatefulWidget {
  const TopupScreen({super.key});

  @override
  State<TopupScreen> createState() => _TopupScreenState();
}

class _TopupScreenState extends State<TopupScreen> {
 

  final List<Map<String, String>> listBank = [
    {
      'name': 'Bank Mandiri',
      'image': 'assets/images/icon_bank/bank_mandiri_logo.png.png'
    },
    {
      'name': 'Bank BCA',
      'image': 'assets/images/icon_bank/bank_central_asia_logo.png.png'
    },
    {'name': 'Bank BNI', 'image': 'assets/images/icon_bank/image.png'},
    {
      'name': 'Bank OCBC',
      'image': 'assets/images/icon_bank/ocbc_bank_of_singapore_logo.png.png'
    },
    {'name': 'Bank BRI', 'image': 'assets/images/icon_bank/image-1.png'},
    {'name': 'Bank CIMB', 'image': 'assets/images/icon_bank/Logo.png.png'},
    {
      'name': 'Bank Danamon',
      'image': 'assets/images/icon_bank/bank_danamon_indonesia_tbk_logo.png.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Transfer",
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text(
              'Virtual Account',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Silahkan pilih salah satu bank kesayangan anda',
              style: TextStyle(fontSize: 12, color: JajaColors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: listBank.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: screenHeight * 0.015),
                      ListTile(
                        leading: Image.asset(
                          listBank[index]['image']!,
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.15,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.account_balance, size: 50);
                          },
                        ),
                        title: Text(
                          listBank[index]['name']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      TopupDetailScreen(
                                nameBank: listBank[index]['name'],
                                imageBank: listBank[index]['image'],
                              ),
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
                      SizedBox(height: screenHeight * 0.015),
                      Divider(
                        color: JajaColors.JajaBlue.B75,
                        thickness: 1,
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}