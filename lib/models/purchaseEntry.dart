//this imports the required feature used below
import 'package:flutter/foundation.dart';

class PurchaseEntry{
  final String id;
  final String dateOfPurchase;
  final String amountPurchased;

  //this constructor intilazies the above variable as named variables
PurchaseEntry({
  @required this.id, 
  @required this.dateOfPurchase, 
  @required this.amountPurchased,
  }); 

  Map toJson() => {
    'id': id,
    'dateOfPurchase': dateOfPurchase,
    'amountPurchased': amountPurchased,
  };

  /*Future<JournalEntry> 
  Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
  }*/
}