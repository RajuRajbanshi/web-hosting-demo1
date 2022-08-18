import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> userTransaction=
  [
    Transaction(id: 't1', title: 'Clock', amount: 5000, date: DateTime.now()),
    Transaction(id: 't2', title: 'Shoe', amount: 1000, date: DateTime.now()),
  ];
void addTransaction(String addTitle,double addAmount)
{
  final tran=Transaction(id: DateTime.now().toString(), title: addTitle, amount: addAmount, date: DateTime.now());
   setState((){
     userTransaction.add(tran);
   });
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addElement: addTransaction),
        TransactionList(transaction: userTransaction)
      ],
    );
  }
}
