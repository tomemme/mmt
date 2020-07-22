import 'package:flutter/material.dart';
import '../models/journalEntry.dart';
import 'dart:convert';

class JournalEntryScreen extends StatelessWidget {
  final List<JournalEntry> loadedEntries = [
    // TODO replace this hardcoded data with user input
    JournalEntry(
      id: '1',
      strainName: 'cookies and chem',
      amountConsumed: '5 grams',
      symptoms: 'headache',
      rating: 5,
      notes: 'this stuff rocked',
    ),
    JournalEntry(
      id: '2',
      strainName: 'glueball',
      amountConsumed: '1 joint',
      symptoms: 'back pain, headache',
      rating: 2,
      notes: 'adlfkjslkj lskjfla lskjfldskjd',
    ),
    JournalEntry(
      id: '3',
      strainName: 'cookies and chem',
      amountConsumed: '5 grams',
      symptoms: 'headache',
      rating: 5,
      notes: 'this stuff rocked',
    ),
    JournalEntry(
      id: '4',
      strainName: 'glueball',
      amountConsumed: '1 joint',
      symptoms: 'back pain, headache',
      rating: 2,
      notes: 'adlfkjslkj lskjfla lskjfldskjd',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Journal Entries'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: loadedEntries.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(loadedEntries[index].strainName),
              subtitle: Text(loadedEntries[index].amountConsumed),
              trailing: Text(loadedEntries[index].symptoms),
            ),
          );
        },
      ),
    );
  }
}
