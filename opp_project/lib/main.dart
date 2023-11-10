import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BioLinkPage(),
    );
  }
}

class BioLinkPage extends StatelessWidget {
  final List<Map<String, String>> bioLinks = [
    {'title': 'Site Pessoal', 'url': 'https://seusite.com'},
    {'title': 'GitHub', 'url': 'https://github.com/melhorzin'},
    {'title': 'instagram', 'url': 'https://instagram.com/kauan.kslll'},
    {'title': 'Whatsapp', 'url': '66984400139'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(https://instagram.com/kauan.kslll),
      ),
      body: ListView.builder(
        itemCount: bioLinks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bioLinks[index]['Kauan Schleifer']!),
            onTap: () {
              _launchURL(bioLinks[index]['url']!);
            },
          );
        },
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }
}