import 'package:flutter/material.dart';
import 'package:flutter_contacts_app/components/search-text-field.dart';
import 'package:flutter_contacts_app/utility/constants.dart';

class ContactSearchPanel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactSearchPanelState();
  }
}

class _ContactSearchPanelState extends State<ContactSearchPanel> {
  String searchText;
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    controller.addListener(updateTerm);
  }

  void updateTerm() {
    setState(() {
      if (controller.text != '') {
        searchText = controller.text;
      } else {
        searchText = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          SearchTextField(controller: controller, hint: 'Search for friend...'),
          //SearchTextBox()
        ],
      ),
      decoration: BoxDecoration(color: Constants.black_secondary),
    );
  }
}
