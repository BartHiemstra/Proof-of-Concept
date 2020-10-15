import 'package:flutter/material.dart';
import 'theme.dart';

class TextFieldStandard extends StatelessWidget {
  final focusNode = FocusNode();
  final textController = TextEditingController();
  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;

  TextFieldStandard(this.hintText, this.inputType, this.inputAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25),
      width: 500,
      child: TextField(
        focusNode: focusNode,
        controller: textController,
        cursorColor: primaryColor,
        keyboardType: inputType,
        textInputAction: inputAction,
        obscureText: (inputType == TextInputType.visiblePassword ? true : false),
        textCapitalization: (inputType == TextInputType.name ? TextCapitalization.words : TextCapitalization.none),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 5, top: 15, right: 5),
          hintText: hintText,
          hintStyle: TextStyle(color: greyColor),
        ),
        style: TextStyle(
          color: secondaryColor,
        ),
      ),
    );
  }

  String getText() {
    return textController.text;
  }

  void setText(String text) {
    textController.text = text;
    textController.selection = TextSelection.fromPosition(TextPosition(offset: textController.text.length));
  }

  void requestFocus() {
    focusNode.requestFocus();
  }

  void unFocus() {
    focusNode.unfocus();
  }
}


class TextFieldIcon extends StatelessWidget {
  final focusNode = FocusNode();
  final textController = TextEditingController();
  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final IconData icon;

  TextFieldIcon(this.hintText, this.inputType, this.inputAction, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25),
      width: 500,
      child: TextField(
        focusNode: focusNode,
        controller: textController,
        cursorColor: primaryColor,
        keyboardType: inputType,
        textInputAction: inputAction,
        obscureText: (inputType == TextInputType.visiblePassword ? true : false),
        textCapitalization: (inputType == TextInputType.name ? TextCapitalization.words : TextCapitalization.none),
        decoration: InputDecoration(
            contentPadding:
            EdgeInsets.only(left: 15, bottom: 3, top: 15, right: 15),
            hintText: hintText,
            hintStyle: TextStyle(color: greyColor),
            prefixIcon: Icon(
              icon,
              color: secondaryColor,
            )),
        style: TextStyle(
          color: secondaryColor,
        ),
      ),
    );
  }

  String getText() {
    return textController.text;
  }

  void setText(String text) {
    textController.text = text;
    textController.selection = TextSelection.fromPosition(TextPosition(offset: textController.text.length));
  }

  void requestFocus() {
    focusNode.requestFocus();
  }

  void unFocus() {
    focusNode.unfocus();
  }
}
