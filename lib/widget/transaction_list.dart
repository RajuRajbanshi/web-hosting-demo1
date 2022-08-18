import 'package:flutter/material.dart';
import '../models/transaction.dart';
//import 'new_transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction>transaction;
  const TransactionList({Key? key,required this.transaction}) : super(key: key);





@override
  Widget build(BuildContext context) {
    return Card(
          elevation: 10,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: Column(
          children: transaction.map((a){
            return Card(
                child: Row(
                  children: [
                    Container(
                      padding:const EdgeInsets.all(10),
                      margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      child: Text('${a.amount}\$',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(a.title,
                          style: const TextStyle(
                              color: Colors.purple,
                              fontSize: 16
                          ),),
                        Text(DateFormat.yMMMd().format(a.date),
                          style: const TextStyle(
                              color: Colors.purple,
                              fontSize: 16
                          ),),
                      ],
                    )
                  ],
                )
            );
          }).toList(),
        ),),
    );
  }
}
