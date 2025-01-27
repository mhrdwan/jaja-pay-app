// screens/transfer/penerima_baru_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/review/review_screen.dart';

class PenerimaBaruScreen extends StatefulWidget {
  const PenerimaBaruScreen({super.key});

  @override
  State<PenerimaBaruScreen> createState() => _PenerimaBaruScreenState();
}

class _PenerimaBaruScreenState extends State<PenerimaBaruScreen> {
  bool _cekedCeklis = false;
  String? _selectedBank; // Variabel untuk menyimpan bank yang dipilih

  final List<Map<String, String>> banks = [
    {
      "name": "Bank Mandiri",
      "icon":
          "https://cdn-icons-png.flaticon.com/512/196/196561.png", // Contoh URL ikon
    },
    {
      "name": "Bank BCA",
      "icon":
          "https://cdn-icons-png.flaticon.com/512/196/196561.png", // Contoh URL ikon
    },
    {
      "name": "Bank BRI",
      "icon":
          "https://cdn-icons-png.flaticon.com/512/196/196561.png", // Contoh URL ikon
    },
    {
      "name": "Bank BNI",
      "icon":
          "https://cdn-icons-png.flaticon.com/512/196/196561.png", // Contoh URL ikon
    },
  ];

  void _showBankBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6, // Ukuran awal 50% dari layar
          minChildSize: 0.5, // Ukuran minimal 25% dari layar
          maxChildSize: 0.8, // Ukuran maksimal 90% dari layar
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Pilih Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController, // Gunakan scroll controller
                      itemCount: banks.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.network(
                            banks[index]["icon"]!, // URL gambar ikon bank
                            width: 40,
                            height: 40,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.business,
                                  size:
                                      40); // Fallback jika gambar gagal dimuat
                            },
                          ),
                          title: Text(banks[index]["name"]!),
                          onTap: () {
                            Navigator.pop(context); // Tutup bottom sheet
                            setState(() {
                              _selectedBank = banks[index]
                                  ["name"]; // Simpan bank yang dipilih
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Penerima Baru",
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
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.013),
            Text(
              "Bank Penerima",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: JajaColors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.008),
            InkWell(
              onTap: () {
                _showBankBottomSheet(context); // Tampilkan bottom sheet
              },
              child: Container(
                height: screenHeight * 0.048,
                decoration: BoxDecoration(
                  color: JajaColors.JajaBlue.B50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: JajaColors.JajaBlue.B300,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _selectedBank ??
                            "Pilih Bank", // Tampilkan bank yang dipilih
                        style: TextStyle(
                          fontSize: 13,
                          color: JajaColors.JajaBlue.B400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.019),
            Text(
              "Nomor Rekening",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: JajaColors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.008),
            Container(
              height: screenHeight * 0.048,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1289093239812",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.019),
            Text(
              "Nama Penerima",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: JajaColors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.008),
            Container(
              height: screenHeight * 0.048,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sdr. M. Hasyim Ridwan",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.019),
            Text(
              "Nominal Transfer",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: JajaColors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.008),
            Container(
              height: screenHeight * 0.048,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp250.000",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.019),
            Text(
              "Tipe Transfer",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: JajaColors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.008),
            InkWell(
              onTap: () {
                // Navigasi ke halaman pemilihan tipe transfer
              },
              child: Container(
                height: screenHeight * 0.048,
                decoration: BoxDecoration(
                  color: JajaColors.JajaBlue.B50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: JajaColors.JajaBlue.B300,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tipe Transfer",
                        style: TextStyle(
                          fontSize: 13,
                          color: JajaColors.JajaBlue.B400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.019),
            Text(
              "Catatan",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: JajaColors.grey,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.008),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Tulis catatanmu disini.",
                    hintStyle: TextStyle(color: JajaColors.grey),
                    filled: true,
                    fillColor: Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  maxLines: 5,
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 9, right: 0, left: 0),
              child: Row(
                children: [
                  Checkbox(
                    value: _cekedCeklis,
                    onChanged: (value) {
                      setState(() {
                        _cekedCeklis = value!;
                      });
                    },
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  Text("Simpan Penerima"),
                ],
              ),
            ),
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
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      ReviewScreen(),
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
              "Selanjutnya",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
