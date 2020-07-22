import 'package:flutter/foundation.dart';

class HelpfulLink {
  final String id;
  final String url;
  final String description;

  //this constructor intilazies the above variable as named variables
  HelpfulLink({
    @required this.id,
    @required this.url,
    @required this.description,
  });

  Map toJson() => {
        'id': id,
        'description': description,
        'url': url,
      };
}
