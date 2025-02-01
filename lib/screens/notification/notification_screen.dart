import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ListNotif = [
      {
        'title': 'Promo Special setiap transaksi anda!',
        'child': 'Cek selanjutnya disini!',
        'status': false // Belum dibaca
      },
      {
        'title': 'Transaksi Anda Berhasil!',
        'child': 'Transaksi pada 12 Januari 2025 Berhasil!',
        'status': true // Sudah dibaca
      },
      {
        'title': 'Transaksi Anda Berhasil!',
        'child': 'Transaksi pada 11 Januari 2025 Berhasil!',
        'status': false // Belum dibaca
      },
      {
        'title': 'Gratis Biaya admin 10x Topup!',
        'child': 'Cek Promonya disini!',
        'status': true // Sudah dibaca
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
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
        bottom: TabBar(
          controller: _tabController,
          labelColor: JajaColors.JajaBlue.B300,
          unselectedLabelColor: Colors.grey,
          indicatorColor: JajaColors.JajaBlue.B300,
          tabs: const [
            Tab(text: 'Semua'),
            Tab(text: 'Belum dibaca'),
            Tab(text: 'Dibaca'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab 1: Semua
          ListView.builder(
            itemCount: ListNotif.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  width: 35, // Ukuran kecil
                  height: 35,
                  child: Image.asset(
                    'assets/images/notification_icon.png',
                    color: ListNotif[index]['status']
                        ? null // Warna asli untuk notifikasi yang sudah dibaca
                        : Colors.grey.withOpacity(0.5), // Warna redup untuk notifikasi yang belum dibaca
                  ),
                ),
                title: Text(ListNotif[index]['title']),
                subtitle: Text(ListNotif[index]['child']),
              );
            },
          ),
          // Tab 2: Belum dibaca
          ListView.builder(
            itemCount: ListNotif.where((notif) => notif['status'] == false).length,
            itemBuilder: (context, index) {
              var unreadNotif = ListNotif.where((notif) => notif['status'] == false).toList()[index];
              return ListTile(
                leading: SizedBox(
                  width: 50, // Ukuran kecil
                  height: 50,
                  child: Image.asset(
                    'assets/images/notification_icon.png',
                    color: Colors.grey.withOpacity(0.5), // Warna redup untuk notifikasi yang belum dibaca
                  ),
                ),
                title: Text(unreadNotif['title']),
                subtitle: Text(unreadNotif['child']),
              );
            },
          ),
          // Tab 3: Dibaca
          ListView.builder(
            itemCount: ListNotif.where((notif) => notif['status'] == true).length,
            itemBuilder: (context, index) {
              var readNotif = ListNotif.where((notif) => notif['status'] == true).toList()[index];
              return ListTile(
                leading: SizedBox(
                  width: 50, // Ukuran kecil
                  height: 50,
                  child: Image.asset(
                    'assets/images/notification_icon.png',
                    color: null, // Warna asli untuk notifikasi yang sudah dibaca
                  ),
                ),
                title: Text(readNotif['title']),
                subtitle: Text(readNotif['child']),
              );
            },
          ),
        ],
      ),
    );
  }
}