// screens/history/history_screen.dart
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

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  // Data dummy untuk contoh
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
    // Kelompokkan transaksi berdasarkan bulan dan tahun
    Map<String, List<Transaction>> groupedTransactions = {};

    for (var transaction in transactions) {
      String monthYear = _getMonthYear(transaction.date);
      if (!groupedTransactions.containsKey(monthYear)) {
        groupedTransactions[monthYear] = [];
      }
      groupedTransactions[monthYear]!.add(transaction);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header yang sudah ada
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     color: JajaColors.JajaBlue.B50,
                      //   ),
                      //   child: IconButton(
                      //     icon: Icon(
                      //       Icons.arrow_back,
                      //       color: JajaColors.JajaBlue.B300,
                      //     ),
                      //     onPressed: () {
                      //       Navigator.pop(context);
                      //     },
                      //   ),
                      // ),
                      SizedBox(width: 10),
                      Text(
                        "Transaction",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/history_icon.png'),
                ],
              ),
            ),

            // List Transaksi
            Expanded(
              child: ListView.builder(
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
