import 'package:flutter/material.dart';
import '/models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index),);
      double totalSum = 0;

      for (var i = 0; i < recentTransactions.length; i++) {
        final date = recentTransactions[i].date;
        if(date.day == weekDay.day && 
            date.month == weekDay.month && 
            date.year == weekDay.year) {
              totalSum += recentTransactions[i].amount;
        }
      }

      print(DateFormat.E().format(weekDay));
      print(totalSum);

      return {
        "DAY": DateFormat.E().format(weekDay),
        "AMOUNT": totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    print(groupTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children:   <Widget> [
          
        ],
      ),
    );
  }
}