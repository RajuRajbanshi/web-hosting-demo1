import 'package:flutter/material.dart';




class NewTransaction extends StatelessWidget {
  final Function addElement;
  NewTransaction({Key? key,required this.addElement}) : super(key: key);

  final title=TextEditingController();
  final amount=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
                children:  [
                    TextField(decoration: const InputDecoration(labelText: 'Title'),
                            controller: title,
                    ),
                    TextField(decoration: const InputDecoration(labelText: 'Amount'),
                                controller: amount,
                    ),
                    TextButton(
                        onPressed:(){
                          addElement(title.text,double.parse(amount.text));},
                        child: const Text('Add Transaction',
                          style: TextStyle(
                            color: Colors.purple,
                          ),), ),
                ],
            ),
        );
  }
}
