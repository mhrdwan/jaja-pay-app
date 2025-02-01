import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';

class ForgetPinScreen extends StatefulWidget {
  const ForgetPinScreen({super.key});

  @override
  State<ForgetPinScreen> createState() => _ForgetPinScreenState();
}

class _ForgetPinScreenState extends State<ForgetPinScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Forget PIN',
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
      body: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                'Enter Your Number To Verification',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFF8F8F8),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      children: [
                        Text('+62'),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '8xx',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                            ),
                            style: TextStyle(fontSize: 14),
                            onChanged: (value) {
                              print('Input: $value');
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
                   SizedBox(
                height: screenHeight * 0.03,
              ),
              _ButtonVerif(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonVerif extends StatelessWidget {
  const _ButtonVerif({
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   PageRouteBuilder(
          //     pageBuilder: (context, animation, secondaryAnimation) =>
          //         VerificationScreen(),
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
          backgroundColor: JajaColors.JajaBlue.B300,
          side: BorderSide(
              color: JajaColors.JajaBlue.B300, strokeAlign: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          "Verification",
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
