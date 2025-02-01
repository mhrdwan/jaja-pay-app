// screens/transfer/transfer_screen.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';
import 'package:jajapay/screens/transfer/penerima_baru_screen.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 3, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: JajaColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Transfer",
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
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.008),
          Container(
            color: Colors.white,
            height: screenHeight * 0.13,
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Penerima Baru",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight * 0.016)),
                  SizedBox(height: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  PenerimaBaruScreen(),
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
                    child: Container(
                      height: screenHeight * 0.048,
                      decoration: BoxDecoration(
                        color: JajaColors.JajaBlue.B50,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
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
                              "Tambah Penerima",
                              style: TextStyle(fontSize: 13),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: JajaColors.JajaBlue.B400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.008),
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              labelColor: JajaColors.JajaBlue.B300,
              unselectedLabelColor: Colors.grey,
              indicatorColor: JajaColors.JajaBlue.B300,
              tabs: [
                Tab(text: 'Semua'),
                Tab(text: 'Favorite'),
                Tab(text: 'Teman'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Semua tab content
                ListView(
                  children: [
                    _buildRecipientTile(
                        "M. Hasyim Ridwan", "1289093239812", true),
                    _buildRecipientTile(
                        "Naufal Arkan Lutfiansyah", "1293082398128", true),
                    _buildRecipientTile("Noor Maya", "13928293829121", false),
                    _buildRecipientTile(
                        "Jelita Anwar", "13928293829121", false),
                    _buildRecipientTile(
                        "Ridwan Kuningan", "13928293829121", false),
                    _buildRecipientTile("Wawan", "13928293829121", false),
                    _buildRecipientTile("Wawan", "13928293829121", false),
                    _buildRecipientTile("Wawan", "13928293829121", false),
                    _buildRecipientTile("Wawan", "13928293829121", false),
                    _buildRecipientTile("Wawan", "13928293829121", false),
                  ],
                ),
                // Favorite tab content
                ListView(
                  children: [
                    _buildRecipientTile(
                        "M. Hasyim Ridwan", "1289093239812", true),
                    _buildRecipientTile(
                        "Naufal Arkan Lutfiansyah", "1293082398128", true),
                  ],
                ),
                // Teman tab content
                ListView(
                  children: [
                    _buildRecipientTile("Noor Maya", "13928293829121", false),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipientTile(String name, String number, bool isFavorite) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 1),
      child: ListTile(
        title: Text(name),
        subtitle: Text(number),
        trailing: Icon(
          Icons.star,
          color: isFavorite ? Colors.amber : Colors.grey[300],
        ),
      ),
    );
  }
}
