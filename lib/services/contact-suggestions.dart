import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<Suggestion> getSuggestions() {
  List<Suggestion> suggestions = List<Suggestion>();
  suggestions.add(Suggestion(true, Icons.person, "Jennifer Cleo", "10:20pm"));
  suggestions.add(Suggestion(true, Icons.person, "Mark High", "9:52pm"));
  suggestions.add(Suggestion(false, Icons.person, "Jeremy Smith", "13 Apr"));
  suggestions.add(Suggestion(false, Icons.person, "Mike White", "25 Mar"));
  suggestions.add(Suggestion(false, Icons.person, "Monica Sim", "16 Mar"));

  suggestions.add(Suggestion(false, Icons.person, "Jennifer Cleo", "10:20pm"));
  suggestions.add(Suggestion(false, Icons.person, "Mark High", "9:52pm"));
  suggestions.add(Suggestion(false, Icons.person, "Jeremy Smith", "13 Apr"));
  suggestions.add(Suggestion(false, Icons.person, "Mike White", "25 Mar"));
  suggestions.add(Suggestion(false, Icons.person, "Monica Sim", "16 Mar"));
  return suggestions;
}

List<Container> getSuggestionTiles() {
  List<Suggestion> suggestions = getSuggestions();
  List<Container> suggestionTiles = List<Container>();
  suggestions.forEach((suggestion) {
    Color color = suggestion.isMissedCall ? Colors.grey : Colors.black87;
    Container card = Container(
      color: color,
      height: 100,
      child: ListTile(
        title: Text(suggestion.name),
        subtitle: Text(suggestion.lastCall),
        leading: CircleAvatar(
          child: Icon(suggestion.icon),
        ),
      ),
    );
    suggestionTiles.add(card);
  });
  return suggestionTiles;
}

class Suggestion {
  bool isMissedCall;
  String name;
  String lastCall;
  IconData icon;
  Suggestion(this.isMissedCall, this.icon, this.name, this.lastCall);
}
