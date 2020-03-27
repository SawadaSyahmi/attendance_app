import 'package:attendanceapp/classes/account.dart';
import 'package:flutter/material.dart';

class Batches extends StatefulWidget {

  @override
  _BatchesState createState() => _BatchesState();
}

class _BatchesState extends State<Batches> {
  @override
  Widget build(BuildContext context) {
    List batches = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home - Teacher'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new),
            onPressed: () async{
              dynamic result = await User().signOut();
              if(result == null)
              {

                Navigator.of(context).pushReplacementNamed('/authentication');
              }
            },
          )
        ],
      ),
      body: batches.isEmpty ? Text('You Need to Add A Batch') : ListView.builder(
          itemCount: batches.length,
          itemBuilder: (context, index){
            return Card(
              child: Text('${batches[index]}'),
            );
          }
      ),
    );
  }
}
