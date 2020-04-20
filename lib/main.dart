import 'package:flutter/material.dart';
import 'package:flutter_contacts_app/components/search-panel.dart';

void main() => runApp(MyApp());

const APP_TITLE = 'Speed Dial';
const IMG_URL = 'localhost:8080/thumb.jpg';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: ContactSuggestionPage(),
    );
  }
}

class ContactSuggestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ContactSearchPanel()));
  }
}
