import 'package:flutter/material.dart';
import 'package:vardhan/details.dart';

class Listpage extends StatelessWidget {
  const Listpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Meet Up List"),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((_, index) {
        return Card(
          child: ListTile(
            title: Text('Meeting $index'),
            subtitle: Text('press to find meeting details'),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWidget(
                        index: 10,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward)),
          ),
        );
      }),
    );
  }
}
