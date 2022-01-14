import 'package:flutter/material.dart';

class CustomTheme {
  static themeData(BuildContext context) {
    return ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Open Sans',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: Theme.of(context).headline1 , fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: Theme.of(context).headline6 , fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: Theme.of(context).bodyText2 , fontFamily: 'Hind'),
        ));
  }
}

class CustomFont {
  static get fontSizeHeadline1 => 72.0;
  static get headline6 => 36.0;
  static get bodyText2 => 14.0;
}

extension customFont on ThemeData {
  get headline1 => 72.0;
  get headline6 => 36.0;
  get bodyText2 => 20.0;
}
