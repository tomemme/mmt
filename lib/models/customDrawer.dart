import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../screens/helpfulLinkScreen.dart';

class CustomDrawer extends StatefulWidget{

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}
class _CustomDrawerState extends State<CustomDrawer> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //navigation button for the app
        //title: Text('Medical Marijuana Journal CD'),
        //backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
                ),
                child: Text('Navigation Menu')),
            CustomListTile('Purchase Entry', () => {'/json'}),
            CustomListTile('tos', () => {'/tos'}),
            CustomListTile('Journal Entry', () => {'/journalEntryScreen'}),
            CustomListTile('Patient Journal', () => {'/patientJournalScreen'}),
            CustomListTile('Helpful Links', () => {'/helpfulLinksScreen'})
          ],
        ),
      ),
    );
  }
}

void selectPage(BuildContext ctx){
    
  if (ctx.toString() == '/journalEntryScreen') {
    Navigator.of(ctx).pushNamed('/journalEntryScreen');
  }else if (ctx.toString() == '/tos'){
      Navigator.of(ctx).pushNamed('/tos');
  }else if (ctx.toString() == '/helpfulLinkScreen'){
      Navigator.of(ctx).pushNamed('/helpfulLinkScreen');
  }else if (ctx.toString() == '/customDrawer'){
      Navigator.of(ctx).pushNamed('/customDrawer');
  }else{
      Navigator.of(ctx).pushNamed('/json');
  }
  
}

class CustomListTile extends StatelessWidget{
  
  final String text;
  final Function onTap;

  CustomListTile(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: () => {selectPage(context),
        print(context)},
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: TextStyle(
                      fontSize: 16.0
                    ),),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}
