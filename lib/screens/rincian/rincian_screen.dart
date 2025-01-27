// screens/rincian/rincian_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';

class RincianScreen extends StatefulWidget {
  const RincianScreen({super.key});

  @override
  State<RincianScreen> createState() => _RincianScreenState();
}

class _RincianScreenState extends State<RincianScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: screenWidth,
            margin: EdgeInsets.all(8),
            child: Icon(
              Icons.close,
              color: JajaColors.grey,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Aksi untuk share bukti transaksi
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Center(
                child: Text(
                  "Share Bukti",
                  style: TextStyle(
                    color: JajaColors.JajaBlue.B300,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              SizedBox(
                width: screenWidth * 0.25,
                child: Image.asset(
                  "assets/images/berhasil_icon.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                "Dana Rp250.000",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: JajaColors.JajaBlue.B300),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text("Transfer Sukses!",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black)),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text("22 Januari 2025 - 11:39 ",
                  style: TextStyle(fontSize: 11, color: JajaColors.grey)),
              SizedBox(
                height: 50,
              ),
              Container(
                width: screenWidth * 0.9,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ExpansionPanelList(
                  elevation: 0,
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _isExpanded = !isExpanded;
                    });
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            "Rincian Transaksi",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                      body: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "test",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Text(
                                  "test",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                          // _buildDetailRow("Jumlah Transfer", "Rp250.000"),
                          // _buildDetailRow("Biaya Admin", "Rp2.500"),
                          // _buildDetailRow("Total", "Rp252.500"),
                          // _buildDetailRow(
                          //     "Metode Pembayaran", "JajaPay Balance"),
                          // _buildDetailRow("Tujuan Transfer", "John Doe"),
                          // _buildDetailRow("No. Rekening Tujuan", "1234567890"),
                          // _buildDetailRow("Bank Tujuan", "Bank Jaja"),
                          // _buildDetailRow("Status", "Berhasil"),
                        ],
                      ),
                      isExpanded: _isExpanded,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: screenWidth * 0.9,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Catatan:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Transfer ini dilakukan untuk keperluan pembayaran bulanan.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
