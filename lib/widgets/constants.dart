

import 'package:flutter/material.dart';

const kWidth16 = SizedBox(width: 16);
const kHeight16 = SizedBox(height: 16);
final borderRadius16 = BorderRadius.circular(16);

enum AuthOptions {
  none,
  basicAuth,
  bearerToken,
  apiKey
}

Map<dynamic, String> displayTextMap = {
  AuthOptions.apiKey.name: "API Key",
  AuthOptions.basicAuth.name: "Basic Auth",
  AuthOptions.bearerToken.name: "Bearer Token",
  AuthOptions.apiKey.name: "API Key",
};


extension StringExtension on String {

  String displayText() {
    if (displayTextMap.containsKey(this)) {
      return displayTextMap[this] ?? "";
    }
    return titleCase();
  }

  String titleCase() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

final inputBorder = OutlineInputBorder(
  borderRadius: borderRadius16,
  borderSide: BorderSide(
    width: 1,
    color: Colors.transparent,
  ),
);