import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransaction;

  TransactionList(this._userTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (context, index) {
          final tx = _userTransaction[index];
          return Card(
              child: Row(children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor, 
                    width: 2
                  )
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                '\$ ${tx.amount.toString()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor, 
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: Theme.of(context).textTheme.titleLarge
                  // TextStyle(
                  //   fontSize: 16, 
                  //   fontWeight: FontWeight.bold
                  // ),
                ),
                Text(
                  DateFormat('yyyy-MM-dd hh:mm:ss').format(tx.date),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ]));
        },
        itemCount: _userTransaction.length,
      ),
    );
  }
}
