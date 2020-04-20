import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({this.controller, this.hint});

  final TextEditingController controller;
  final String hint;

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        child: new Column(
            children : [
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: hint,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ]
        ));
  }
}

