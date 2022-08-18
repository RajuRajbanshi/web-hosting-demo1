import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_calendar/calendar.dart';
/*import 'models/transaction.dart';
import 'package:intl/intl.dart';
import 'widget/new_transaction.dart';
import 'widget/transaction_list.dart';*/
import './widget/user_transaction.dart';

void main() =>
    runApp(const MaterialApp(
        home:MyHomePage(),
));







class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text('Home Page',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.purple,
          fontSize: 20,
        ),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: const Card(
              elevation: 10,
              child:Text('Chart',style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.purple,
                fontSize: 16
              ),),
            ),
          ),
          const UserTransaction()
        ],
      ),
    );
  }
}





















