import 'package:flutter/material.dart';
import 'package:myapp/models/journalEntry.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

/* void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
} */

class Json extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Json> {
  TextEditingController keyInputController = new TextEditingController();
  TextEditingController valueInputController = new TextEditingController();
  TextEditingController keyInput1Controller = new TextEditingController();
  TextEditingController valueInput1Controller = new TextEditingController();

  File jsonFile;
  Directory dir;
  String fileName = "myFile1.json";
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
    keyInputController.dispose();
    valueInputController.dispose();
    valueInput1Controller.dispose();
    keyInputController.dispose();
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

  void writeToFile(String key, dynamic value, String key1, dynamic value1) {
    print("Writing to file!");
    Map<String, dynamic> content = {key: value, key1: value1};
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

  void deleteFromFile() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Journal Entry"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              new Padding(padding: new EdgeInsets.only(top: 10.0)),
              new Text(
                "Entry contents: ",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(fileContent.toString(), style: TextStyle()),
              new Padding(padding: new EdgeInsets.only(top: 10.0)),
              new Text(
                "Enter Purchase Info below",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: keyInputController,
                decoration: InputDecoration(hintText: 'Enter Strain'),
              ),
              new TextField(
                controller: valueInputController,
                decoration: InputDecoration(hintText: 'Enter Amount Consumed'),
              ),
              TextField(
                controller: keyInput1Controller,
                decoration: InputDecoration(hintText: 'Enter Symptoms'),
              ),
              TextField(
                controller: valueInput1Controller,
                decoration: InputDecoration(hintText: 'Enter rating'),
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0)),
              new RaisedButton(
                  child: new Text("Submit Entry"),
                  onPressed: () {
                    writeToFile(
                        keyInputController.text,
                        valueInputController.text,
                        keyInput1Controller.text,
                        valueInput1Controller.text);
                    keyInputController.clear();
                    valueInputController.clear();
                    keyInput1Controller.clear();
                    valueInput1Controller.clear();
                  })
            ],
          ),
        ));
  }
}
