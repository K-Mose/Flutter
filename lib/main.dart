import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import 'package:personal_expenses/widgets/transaction_list.dart';
import './models/transaction.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Personal Expenses',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   accentColor: Colors.amber,
      // ),
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.blue,
          secondary: Colors.black
        )
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String titleInput;
  final titleController = TextEditingController();

  final amountController = TextEditingController();

final List<Transaction> _userTransaction = [
    Transaction(
      id: '1', 
      title: 'New Shoes', 
      amount: 120.0, 
      date: DateTime.now()
    ),
    Transaction(
      id: '2', 
      title: 'Protein', 
      amount: 89.99, 
      date: DateTime.now()
    ),
  ];

  int _id;

  void _addTransaction(String title, double amount) {
    _id += 1;
    setState(() {
      _userTransaction.add(
        Transaction(
          id: "$_id", 
          title: title, 
          amount: amount, 
          date: DateTime.now()
        )
      );
    });
    print(_userTransaction);
  }
  void startAddNewTrx(BuildContext context) {
    showModalBottomSheet(
      context: context, 
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addTransaction),
          behavior: HitTestBehavior.opaque,
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    _id = _userTransaction.length;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Text('Personal Expenses'),
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Colors.blue,
            elevation: 5,
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text("Chart!")
            ),
          ),
          TransactionList(_userTransaction)
      ],
      ),
      // fab 위치 설정
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // fab 아이콘 설정
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewTrx(context),
      ),
    );
  }
}
