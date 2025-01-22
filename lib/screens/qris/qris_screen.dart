// screens/qris/qris_screen.dart
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerSimple extends StatefulWidget {
  const BarcodeScannerSimple({super.key});

  @override
  State<BarcodeScannerSimple> createState() => _BarcodeScannerSimpleState();
}

class _BarcodeScannerSimpleState extends State<BarcodeScannerSimple> {
  MobileScannerController cameraController = MobileScannerController();
  bool isScanning = true;
  bool isFlashOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scanner Camera
          MobileScanner(
            controller: cameraController,
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              for (final barcode in barcodes) {
                if (mounted && isScanning) {
                  setState(() => isScanning = false);

                  // Tampilkan hasil scan
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Hasil Scan'),
                        content: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Format: ${barcode.format.name}'),
                              const SizedBox(height: 8),
                              Text('Data: ${barcode.rawValue}'),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(() => isScanning = true);
                              Navigator.pop(context);
                            },
                            child: const Text('Scan Lagi'),
                          ),
                        ],
                      );
                    },
                  );
                }
              }
            },
          ),

          // Back Button
          Positioned(
            top: 40,
            left: 16,
            child: InkWell(
              onTap: () {
                Navigator.pop(context, 'data_yang_dikembalikan');
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/icon_back.png",
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          ),

          // Scan Frame
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.25,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: Image.asset(
                    "assets/images/qris_camera.png",
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 8,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.photo_library,
                          color: Colors.blue,
                          size: 32,
                        ),
                        onPressed: () {
                          // TODO: Implement gallery picker
                        },
                      ),
                      const Text(
                        'Gallery',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          isFlashOn ? Icons.flash_on : Icons.flash_off,
                          color: Colors.blue,
                          size: 32,
                        ),
                        onPressed: () async {
                          await cameraController.toggleTorch();
                          setState(() {
                            isFlashOn = !isFlashOn;
                          });
                        },
                      ),
                      const Text(
                        'Flash',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  // Switch Camera Button
                  // Column(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     IconButton(
                  //       icon: const Icon(
                  //         Icons.cameraswitch_outlined,
                  //         color: Colors.white,
                  //         size: 32,
                  //       ),
                  //       onPressed: () => cameraController.switchCamera(),
                  //     ),
                  //     const Text(
                  //       'Flip',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 12,
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // Gallery Button
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }
}
