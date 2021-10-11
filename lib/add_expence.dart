import 'package:flutter/material.dart';

class AddExpence extends StatefulWidget {
  const AddExpence({Key? key}) : super(key: key);

  @override
  _AddExpenceState createState() => _AddExpenceState();
}

class _AddExpenceState extends State<AddExpence> {
  TextEditingController ExpenceController = TextEditingController();
  TextEditingController AmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextFormField(
                controller: ExpenceController,
                decoration: InputDecoration(hintText: 'Expence Name'),
              ),
              TextFormField(
                controller: AmountController,
                decoration: InputDecoration(hintText: 'Add Amount'),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Add Exp'))
            ],
          ),
        ),
      )),
    );
  }
}
