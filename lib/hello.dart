import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/journalEntryScreen.dart';

class Hello extends StatefulWidget {
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //navigation button for the app
          title: Text('Medical Marijuana Journal'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Text('Please enjoy our app'),
              SizedBox(height: 30.0),
              RaisedButton(
                  child: Text('New Journal Entry'),
                  onPressed: () {
                    // Show the next page (101)
                    Navigator.pushNamed(context, '/json');
                  }),
              SizedBox(height: 12.0),
              RaisedButton(
                  child: Text('View Journal Entries'),
                  onPressed: () {
                    // Show the next page (101)
                    Navigator.pushNamed(context, '/journalEntryScreen');
                  }),
              SizedBox(height: 12.0),
              RaisedButton(
                  child: Text('New Purchase Entry'),
                  onPressed: () {
                    // Show the next page (101)
                    Navigator.pushNamed(context, '/purchaseScreen');
                  }),
              SizedBox(height: 12.0),
              RaisedButton(
                  child: Text('View Purchase Entries'),
                  onPressed: () {
                    // Show the next page (101)
                    Navigator.pushNamed(context, '/purchaseEntryScreen');
                  }),
              SizedBox(height: 12.0),
              RaisedButton(
                  child: Text('Helpful Links'),
                  onPressed: () {
                    // Show the next page (101)
                    Navigator.pushNamed(context, '/helpfulLinkScreen');
                  }),
              SizedBox(height: 12.0),
            ],
          ),
        ));
  }
}
