import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
//import '../models/customDrawer.dart';
//TODO need to add an accept button that allows you to move on to drawer or home screen.

class PurchaseScreen extends StatefulWidget {
  @override
  _PurchaseScreen createState() => _PurchaseScreen();
}

class _PurchaseScreen extends State<PurchaseScreen> {
  // TODO: Add text editing controllers (101)
  final _dateController = TextEditingController();
  final _amountController = TextEditingController();

  File jsonFile;
  Directory dir;
  String fileName = "purchaseFile.json"; //purchaseFile
  bool fileExists = false;
  Map<String, dynamic> fileContent;

  @override
  void initState() {
    super.initState();
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = new File(dir.path + "/" + fileName);
      fileExists = jsonFile.existsSync();
      if (fileExists)
        this.setState(
            () => fileContent = json.decode(jsonFile.readAsStringSync()));
    });
  }

  @override
  void dispose() {
    _dateController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void createFile(
      Map<String, dynamic> content, Directory dir, String fileName) {
    print("Creating file!");
    File file = new File(dir.path + "/" + fileName);
    file.createSync();
    fileExists = true;
    file.writeAsStringSync(json.encode(content));
  }

  void writeToFile(String key, dynamic value) {
    print("Writing to file!");
    Map<String, dynamic> content = {key: value};
    if (fileExists) {
      print("File exists");
      Map<String, dynamic> jsonFileContent =
          json.decode(jsonFile.readAsStringSync());
      jsonFileContent.addAll(content);
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("File does not exist!");
      createFile(content, dir, fileName);
    }
    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
    print(fileContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Purchase Screen'),
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
                'Fill in the Information below to save a recent purchase',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 80.0),
              TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Enter Date of puchase',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _amountController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Enter amount',
                ),
              ),
              RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    // write user input to file
                    writeToFile(_dateController.text, _amountController.text);
                    // Show the next page
                    Navigator.pushNamed(context, '/hello');
                  }),
            ],
          ),
        ));
  }
}
