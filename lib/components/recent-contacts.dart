import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_contacts_app/services/contact-suggestions.dart';

class RecentContacts extends StatelessWidget {
  final List<Suggestion> suggestionTiles = getSuggestions();

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    return Container(
        width: sizeX, height: 100, child: Row(children: getRecentContacts()));
  }

  List<Widget> getRecentContacts() {
    List<Widget> recentContacts = List<Widget>();
    suggestionTiles.forEach((suggestion) {
      Container container = Container(
        child: CircleAvatar(
          child: Icon(suggestion.icon),
        ),
      );
      recentContacts.add(container);
    });
    return recentContacts;
  }
}
