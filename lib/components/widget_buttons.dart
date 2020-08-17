import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget_boolean_builder.dart';

class MyButton extends StatelessWidget {
  final String caption;
  final Function() onTap;
  Color buttonColor;
  Color textColor;
  final double fontSize = 16.0;
  final double buttonWidth;
  final double buttonHeight;
  int _buttonType;
  bool _isOutline = false,
      _isLink = false;

  static const _BUTTON_TYPE_ERROR = 1;
  static const _BUTTON_TYPE_PRIMARY = 2;
  static const _BUTTON_TYPE_SECONDARY = 3;
  static const _BUTTON_TYPE_FLAT = 4;
  static const _BUTTON_TYPE_FLAT_PRIMARY = 5;
  static const _BUTTON_TYPE_FLAT_SECONDARY = 6;
  static const _BUTTON_TYPE_FLAT_ERROR = 7;
  static const _BUTTON_TYPE_FLAT_CUSTOM = 8;
  static const _BUTTON_TYPE_LINK = 9;

  MyButton.error(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 1;
  }

  MyButton.link({@required this.caption,
    this.buttonWidth = 88.0,
    this.buttonHeight = 48.0,
    @required this.onTap}) {
    this._isLink = true;
  }

  MyButton.primary(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 2;
  }

  MyButton.secondary(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 3;
  }

  MyButton.flat(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 4;
    this._isOutline = true;
  }

  MyButton.flatPrimary(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 5;
    this._isOutline = true;
  }

  MyButton.flatSecondary(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 6;
    this._isOutline = true;
  }

  MyButton.flatError(
      {@required this.caption,
        this.buttonWidth = 88.0,
        this.buttonHeight = 48.0,
        @required this.onTap}) {
    this._buttonType = 7;
    this._isOutline = true;
  }

  @override
  Widget build(BuildContext context) {
    Widget _buttonShape;
    var appTheme = Theme.of(context);

    switch (_buttonType) {
      case _BUTTON_TYPE_ERROR:
        this.buttonColor = appTheme.colorScheme.error;
        this.textColor = appTheme.colorScheme.onError;
        break;
      case _BUTTON_TYPE_PRIMARY:
        this.buttonColor = appTheme.colorScheme.primary;
        this.textColor = appTheme.colorScheme.onPrimary;
        break;
      case _BUTTON_TYPE_SECONDARY:
        this.buttonColor = appTheme.buttonTheme.colorScheme.secondary;
        this.textColor = appTheme.buttonTheme.colorScheme.onSecondary;
        break;
      case _BUTTON_TYPE_FLAT:
        this.buttonColor = appTheme.buttonColor;
        this.textColor = appTheme.colorScheme.onSurface;
        break;
      case _BUTTON_TYPE_FLAT_ERROR:
        this.buttonColor = appTheme.colorScheme.error;
        this.textColor = appTheme.colorScheme.error;
        break;
      case _BUTTON_TYPE_FLAT_PRIMARY:
        this.buttonColor = appTheme.colorScheme.primary;
        this.textColor = appTheme.colorScheme.primary;
        break;
      case _BUTTON_TYPE_FLAT_SECONDARY:
        this.buttonColor = appTheme.buttonTheme.colorScheme.secondary;
        this.textColor = appTheme.buttonTheme.colorScheme.onSecondary;
        break;
    }

    if (_isOutline) {
      _buttonShape = OutlineButton(
        color: buttonColor,
        highlightedBorderColor: buttonColor,
        borderSide: BorderSide(color: buttonColor),
        child: Text(caption,
            style: TextStyle(fontSize: fontSize, color: textColor)),
        onPressed: onTap,
      );
    } else {
      _buttonShape = FlatButton(
        color: buttonColor,
        child: Text(caption,
            style: TextStyle(
                fontSize: fontSize,
                color: textColor ?? appTheme.colorScheme.onPrimary)),
        onPressed: onTap,
      );
    }

    return Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
        child: SingleChildBooleanWidget(
            boolean: _isLink,
            ifTrue: RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                      text: caption,
                      style: new TextStyle(color: appTheme.colorScheme.primary),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = onTap),
                ],
              ),
            ),
            ifFalse: ButtonTheme(
              minWidth: buttonWidth,
              height: buttonHeight,
              child: _buttonShape,
            )
        )
    );
  }
}
