import 'package:flutter/material.dart';
import '../models/purchaseEntry.dart';
import 'dart:convert';

class PurchaseEntryScreen extends StatelessWidget {
  final List<PurchaseEntry> loadedEntries = [
    // TODO replace this hardcoded data with user input
    PurchaseEntry(
      id: '1',
      dateOfPurchase: '2020-01-05',
      amountPurchased: '5 grams',
    ),
    PurchaseEntry(
      id: '2',
      dateOfPurchase: '2020-01-06',
      amountPurchased: '5 grams',
    ),
    PurchaseEntry(
      id: '3',
      dateOfPurchase: '2020-01-12',
      amountPurchased: '10 grams',
    ),
    PurchaseEntry(
      id: '4',
      dateOfPurchase: '2020-01-15',
      amountPurchased: '5 edibles',
    ),
    PurchaseEntry(
      id: '1',
      dateOfPurchase: '2020-01-05',
      amountPurchased: '5 grams',
    ),
    PurchaseEntry(
      id: '2',
      dateOfPurchase: '2020-01-06',
      amountPurchased: '5 grams',
    ),
    PurchaseEntry(
      id: '3',
      dateOfPurchase: '2020-01-12',
      amountPurchased: '10 grams',
    ),
    PurchaseEntry(
      id: '4',
      dateOfPurchase: '2020-01-15',
      amountPurchased: '5 edibles',
    ),
  ];

  //TODO make a statful widget read from purchase file and add sting to the list and rebuild the page.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Purchase Entries'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: loadedEntries.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(loadedEntries[index].dateOfPurchase),
              subtitle: Text(loadedEntries[index].amountPurchased),
            ),
          );
        },
      ),
    );
  }
}
