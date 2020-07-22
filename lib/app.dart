import 'package:flutter/material.dart';
import 'package:myapp/json.dart';
import 'package:myapp/screens/purchaseEntryScreen.dart';
import 'hello.dart';
import './screens/tos.dart';
import './screens/helpfulLinkScreen.dart';
import './loginPage.dart';
import './screens/journalEntryScreen.dart';
import './screens/purchaseScreen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginPage(),
      routes: {
        '/journalEntryScreen': (ctx) => JournalEntryScreen(),
        '/tos': (ctx) => Tos(),
        '/hello': (ctx) => Hello(),
        '/helpfulLinkScreen': (ctx) => HelpfulLinkScreen()
        ,'/json': (ctx) => Json()
        ,'/purchaseEntryScreen': (ctx) => PurchaseEntryScreen()
        ,'/purchaseScreen': (ctx) => PurchaseScreen()
      },
    );
  }
}