import 'package:flutter/material.dart';
import 'package:govt_documents_validator/govt_documents_validator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  late bool isAadharNum;
  late bool isGSTNum;
  GSTValidator gstValidator = new GSTValidator();
  AadharValidator aadharValidator = new AadharValidator();
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Basic info page",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                maxLength: 12,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onFieldSubmitted: (value) {},
              ),
              //box styling
              SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLength: 12,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onFieldSubmitted: (value) {},
              ),
              //box styling
              SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLength: 12,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: 'Birth date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onFieldSubmitted: (value) {},
              ),
              //box styling
              SizedBox(
                height: 20,
              ),

              TextFormField(
                maxLength: 12,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: 'Aadhar Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (aadharValidator.validate(value) == true) {
                    return null;
                  }
                  return "Incorrect Aadhar Number";
                },
              ),
              //box styling
              SizedBox(
                height: 20,
              ),
              //text input
              TextFormField(
                maxLength: 14,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: 'GST Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                ),
                onFieldSubmitted: (value) {},
                validator: (value) {
                  if (gstValidator.validate(value) == true) {
                    return null;
                  }
                  return "Incorrect GST Number";
                },
              ),
              //box styling
              SizedBox(
                height: 20,
              ),
              //text input
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () => _submit(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
