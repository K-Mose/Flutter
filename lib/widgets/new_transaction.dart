import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function _addTrx;

  NewTransaction(this._addTrx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    print("submit Data");
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    titleController.clear();
    amountController.clear();
    widget._addTrx(
      enteredTitle,
      enteredAmount
    );

    // context 내의 topmost screen을 pop 시킴
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              onSubmitted: (_) => submitData(),
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  Text("No Date Choosen!"),
                  TextButton(
                    onPressed: () {}, 
                    child: Text(
                      "Choose Date",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: submitData,
                child: Text("Add Transaction"))
          ],
        ),
      ),
    );
  }
}
