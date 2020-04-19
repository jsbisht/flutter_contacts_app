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
        primarySwatch: Colors.blue,
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

class CircularProfileLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(100.0),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.circle,
        //image: DecorationImage(image: NetworkImage("bit.ly/flutter_tiger")),
      ),
    );
  }
}
