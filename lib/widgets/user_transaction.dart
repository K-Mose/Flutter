import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  final Function _addTransaction;
  final List<Transaction> _userTransaction;

  UserTransactions(this._addTransaction, this._userTransaction);

  @override
  State<UserTransactions> createState() => _UserTransactionsState(_addTransaction, _userTransaction);
}

class _UserTransactionsState extends State<UserTransactions> {
  final Function _addTransaction;
  final List<Transaction> _userTransaction;

  _UserTransactionsState(this._addTransaction, this._userTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}
