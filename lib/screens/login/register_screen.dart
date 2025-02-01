import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/verification/verification_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Registration",
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
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                'Full Name',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFF8F8F8),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: screenWidth,
                height: screenHeight * 0.05,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                  style: TextStyle(fontSize: 14),
                  onChanged: (value) {
                    print('Input: $value');
                  },
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Text(
                'Username',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFF8F8F8),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: screenWidth,
                height: screenHeight * 0.05,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                  style: TextStyle(fontSize: 14),
                  onChanged: (value) {
                    print('Input: $value');
                  },
                ),
              ),
              SizedBox(
                height: screenHeight * 0.035,
              ),
              Text(
                'Password',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFF8F8F8),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: screenWidth,
                height: screenHeight * 0.05,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                  style: TextStyle(fontSize: 14),
                  onChanged: (value) {
                    print('Input: $value');
                  },
                ),
              ),
              SizedBox(
                height: screenHeight * 0.035,
              ),
              Text(
                'Re-type Password',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFF8F8F8),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: screenWidth,
                height: screenHeight * 0.05,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                  style: TextStyle(fontSize: 14),
                  onChanged: (value) {
                    print('Input: $value');
                  },
                ),
              ),
              SizedBox(
                height: screenHeight * 0.035,
              ),
              Text(
                'Number Phone',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
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
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors
                              .black), 
                      children: [
                        TextSpan(text: 'Accept '),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(color: JajaColors.JajaBlue.B300),
                        ),
                        TextSpan(text: ' And '),
                        TextSpan(
                          text: 'Conditions',
                          style: TextStyle(color: JajaColors.JajaBlue.B300),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
              SizedBox(height: screenHeight * 0.05,),
               SizedBox(
                width: screenWidth,
                child: ElevatedButton(
                            onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        VerificationScreen(),
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
                side: BorderSide(color: JajaColors.JajaBlue.B300, strokeAlign: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                            ),
                            child: Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 13),
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
