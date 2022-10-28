import 'package:flutter/material.dart';

class HelperMethods
{
  static void closeKeyboard() {
    FocusManager.instance.primaryFocus!.unfocus();
    // FocusScope.of(context).requestFocus(FocusNode());
  }
}