import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/pin/pin_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  // Create text editing controllers for each OTP field
  final List<TextEditingController> _controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  // Create focus nodes for each OTP field
  final List<FocusNode> _focusNodes = List.generate(
    4,
    (index) => FocusNode(),
  );

  @override
  void dispose() {
    // Dispose controllers and focus nodes
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Handle OTP input
  void _handleOtpInput(String value, int index) {
    if (value.length == 1) {
      // Move to next field if not last
      if (index < 3) {
        _focusNodes[index + 1].requestFocus();
      } else {
        // Last field - can handle completion here
        _focusNodes[index].unfocus();
        // Get complete OTP
        final otp = _controllers.map((controller) => controller.text).join();
        // TODO: Handle OTP verification
        print('Complete OTP: $otp');
      }
    }
  }

  // Handle backspace
  void _handleBackspace(String value, int index) {
    if (value.isEmpty && index > 0) {
      _controllers[index - 1].clear();
      _focusNodes[index - 1].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Verification',
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
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.05,
              ),
              const Text(
                "Enter OTP Verification From SMS",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.2,
                    decoration: BoxDecoration(
                      color: JajaColors.JajaBlue.B50,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: TextField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: const TextStyle(fontSize: 24),
                        decoration: const InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            _handleOtpInput(value, index);
                          } else {
                            _handleBackspace(value, index);
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              SizedBox(
                width: screenWidth,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PinScreen(namePin: "New PIN",),
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
              ),
               SizedBox(
                height: screenHeight * 0.04,
              ),
              Center(
                child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors
                                .black), 
                        children: [
                          TextSpan(text: 'Not get any code? '),
                          TextSpan(
                            text: 'Resend Code',
                            style: TextStyle(color: JajaColors.JajaBlue.B300),
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
