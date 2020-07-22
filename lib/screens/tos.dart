import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '../models/customDrawer.dart';
//TODO need to add an accept button that allows you to move on to drawer or home screen.
class Tos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MMJ Terms of Service'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        //drawer: CustomDrawer(),
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            Text(
              'Please read this End-User License Agreement carefully before clicking the "I Agree" button, downloading or using Medical Marijuana Tracker',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10.0),
            Text(
                'By clicking the "I Agree" button, downloading or using the Application, You are agreeing to be bound by the terms and conditions of this Agreement. If You do not agree to the terms of this Agreement, do not click on the "I Agree" button, do not download or do not use the Application.',
                textAlign: TextAlign.justify),
            SizedBox(height: 10.0),
            Text(
                'This Agreement is a legal document between You and the Company and it governs your use of the Application made available to You by the Company.',
                textAlign: TextAlign.justify),
            SizedBox(height: 10.0),
            Text(
                'The Application is licensed, not sold, to You by the Company for use strictly in  accordance with the terms of this Agreement. You represent that you are over the age of 18. The Company does not target its Content to children or teenagers under 18, and the Company does not permit any user under 18 for using the Application.',
                textAlign: TextAlign.justify),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text('ACCEPT'),
              onPressed: () {
                // Show the next page (101)

                Navigator.pushNamed(context, '/hello');
              },
            )
          ],
        )));
  }
}
