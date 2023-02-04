import 'package:flutter/material.dart';
import 'package:vardhan/list.dart';
import 'package:vardhan/scan.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    padding: EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20), //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Listpage(),
                    ));
                  },
                  child: Text('View list of meeting')),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => QRViewExample(),
                    ));
                  },
                  child: Text('Scan Details of applicants')),
            ),
          ],
        ));
  }
}
