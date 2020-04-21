import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts_app/services/contact-suggestions.dart';
import 'package:flutter_contacts_app/utility/constants.dart';

class SuggestionsPanel extends StatelessWidget {
  final List<Container> suggestionTiles = getSuggestionTiles();

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
        width: sizeX,
        height: sizeY,
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, position) => createSuggested(position),
          separatorBuilder: (context, position) => createSeperator(),
          scrollDirection: Axis.vertical,
        ));
  }

  Widget createSuggested(position) {
    return suggestionTiles[position];
  }

  Widget createSeperator() {
    Widget seperator = Container(
      height: 15,
      color: Constants.black_secondary,
    );
    return seperator;
  }
}
