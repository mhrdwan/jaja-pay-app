// screens/wallet/wallet_screen-.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';

class Transaction {
  final String type;
  final DateTime date;
  final double amount;
  final String status;
  final bool isIncoming;

  Transaction({
    required this.type,
    required this.date,
    required this.amount,
    required this.status,
    required this.isIncoming,
  });
}

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final List<Transaction> transactions = [
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2025, 1, 12, 12, 40),
      amount: 45000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2025, 1, 11, 15, 30),
      amount: 250000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2025, 1, 11, 14, 20),
      amount: 45000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Top Up E-Wallet',
      date: DateTime(2025, 1, 10, 09, 15),
      amount: 100000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2025, 1, 9, 16, 45),
      amount: 75000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2025, 1, 8, 13, 20),
      amount: 500000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2025, 1, 7, 11, 30),
      amount: 25000,
      status: 'Success',
      isIncoming: false,
    ),
    // December 2024
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 12, 31, 18, 45),
      amount: 45000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 12, 30, 14, 15),
      amount: 150000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2024, 12, 29, 10, 30),
      amount: 300000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Top Up E-Wallet',
      date: DateTime(2024, 12, 28, 09, 20),
      amount: 200000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 12, 27, 12, 40),
      amount: 35000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 12, 26, 16, 15),
      amount: 85000,
      status: 'Success',
      isIncoming: false,
    ),
    // November 2024
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 11, 30, 15, 20),
      amount: 55000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2024, 11, 29, 11, 45),
      amount: 450000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Top Up E-Wallet',
      date: DateTime(2024, 11, 28, 10, 30),
      amount: 150000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 11, 27, 14, 20),
      amount: 95000,
      status: 'Success',
      isIncoming: false,
    ),
    // Oktober 2024
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 10, 31, 13, 15),
      amount: 62000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 10, 30, 09, 45),
      amount: 175000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2024, 10, 29, 16, 30),
      amount: 750000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Top Up E-Wallet',
      date: DateTime(2024, 10, 28, 11, 20),
      amount: 300000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 10, 27, 14, 40),
      amount: 42000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 10, 26, 10, 15),
      amount: 125000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2024, 10, 25, 15, 30),
      amount: 350000,
      status: 'Success',
      isIncoming: true,
    ),
    // September 2024
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 9, 30, 12, 20),
      amount: 58000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 9, 29, 14, 45),
      amount: 225000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2024, 9, 28, 10, 30),
      amount: 600000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Top Up E-Wallet',
      date: DateTime(2024, 9, 27, 16, 20),
      amount: 250000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 9, 26, 13, 40),
      amount: 47000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Transfer Via Bank',
      date: DateTime(2024, 9, 25, 11, 15),
      amount: 135000,
      status: 'Success',
      isIncoming: false,
    ),
    Transaction(
      type: 'Receive from Transfer',
      date: DateTime(2024, 9, 24, 15, 30),
      amount: 420000,
      status: 'Success',
      isIncoming: true,
    ),
    Transaction(
      type: 'Qris Payment',
      date: DateTime(2024, 9, 23, 12, 45),
      amount: 53000,
      status: 'Success',
      isIncoming: false,
    ),
  ];

  String _getMonthYear(DateTime date) {
    List<String> months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];
    return '${months[date.month - 1]} ${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    Map<String, List<Transaction>> groupedTransactions = {};

    for (var transaction in transactions) {
      String monthYear = _getMonthYear(transaction.date);
      if (!groupedTransactions.containsKey(monthYear)) {
        groupedTransactions[monthYear] = [];
      }
      groupedTransactions[monthYear]!.add(transaction);
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("wallet screen"),
      // ),
      body: Stack(
        children: [
          Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.39,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bgWallet.png"),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            top: 50,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Naufal Arkan L",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "0857123900321",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6.5,
            right: 20,
            left: 20,
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 4.9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Saldo Anda",
                      style: TextStyle(fontSize: 16, color: JajaColors.grey),
                    ),
                    Text(
                      "Rp1.240.000",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
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
                              Image.asset('assets/images/minta.png'),
                              Text("Tarik")
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            maxChildSize: 0.90,
            minChildSize: 0.6,
            builder: (context, scrollController) => Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: groupedTransactions.length,
                      itemBuilder: (context, groupIndex) {
                        String monthYear =
                            groupedTransactions.keys.elementAt(groupIndex);
                        List<Transaction> monthTransactions =
                            groupedTransactions[monthYear]!;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header Bulan
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              child: Text(
                                monthYear,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // List Transaksi per Bulan
                            ...monthTransactions.map((transaction) {
                              return _buildTransactionItem(transaction);
                            }).toList(),
                            SizedBox(height: 12), // Spacing antar grup bulan
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(Transaction transaction) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.type,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  transaction.date.hour != 0
                      ? '${transaction.date.day} ${_getMonthYear(transaction.date)}, ${transaction.date.hour}:${transaction.date.minute.toString().padLeft(2, '0')}'
                      : '${transaction.date.day} ${_getMonthYear(transaction.date)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${transaction.isIncoming ? '+' : '-'}Rp${transaction.amount.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: transaction.isIncoming ? Colors.green : Colors.red,
                ),
              ),
              SizedBox(height: 4),
              Text(
                transaction.status,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
