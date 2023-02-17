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
      child: _userTransaction.isEmpty ? Column(
        children: [
          Text(
            "No transactions added yet!",
            style: Theme.of(context).textTheme.titleLarge
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: Image.asset(
              "assets/images/waiting.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ) : 
      ListView.builder(
        itemBuilder: (context, index) {
          final tx = _userTransaction[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: FittedBox(
                    child: Text('\$ ${tx.amount.toString()}')
                  ),
                ),
              ),
              title: Text(
                tx.title, 
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Text(DateFormat.yMMMd().format(tx.date)),
            ),
          );
        },
        itemCount: _userTransaction.length,
      ),
    );
  }
}
/*
Card(
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
*/