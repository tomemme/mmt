import 'package:flutter/material.dart';
import '../models/helpfulLink.dart';

class HelpfulLinkScreen extends StatelessWidget {
  final List<HelpfulLink> loadedEntries = [
    HelpfulLink(
      id: '1',
      description: 'Arkansas Medical Marijuana Commission',
      url: 'https://www.dfa.arkansas.gov/medical-marijuana-commission/',
    ),
    HelpfulLink(
      id: '2',
      description: 'Arkansas Medical Marijuana Amendment',
      url:
          'healthy.arkansas.gov/images/uploads/pdf/Arkansas_Medical_Marijuana_Amendment_of_2016_-_searchable.pdf',
    ),
    HelpfulLink(
      id: '3',
      description: 'Arknasas Department of Health',
      url:
          'https://www.healthy.arkansas.gov/programs-services/topics/medical-marijuana',
    ),
    HelpfulLink(
      id: '4',
      description: 'Arkansas Cannabis Industry Association',
      url: 'https://arcannabis.org/about/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Helpful Links'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: loadedEntries.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(loadedEntries[index].description),
              subtitle: Text(loadedEntries[index].url),
            ),
          );
        },
      ),
    );
  }
}
