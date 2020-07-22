//this imports the required feature used below
import 'package:flutter/foundation.dart';

class JournalEntry{
  final String id;
  final String strainName;
  final String amountConsumed;
  final String symptoms;
  final int rating;
  final String notes;

  //this constructor intilazies the above variable as named variables
JournalEntry({
  @required this.id, 
  @required this.amountConsumed, 
  @required this.strainName,  
  this.rating, 
  this.symptoms,
  this.notes});

  Map toJson() =>{
    'id': id,
    'strainName': strainName,
    'amountConsumed': amountConsumed,
    'symptoms': symptoms,
    'rating': rating,
    'notes': notes,
  };

  /*Future<JournalEntry> 
  Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
  }*/
}