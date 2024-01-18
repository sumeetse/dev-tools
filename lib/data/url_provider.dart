

import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'url_provider.g.dart';


@riverpod
class InputUrl extends _$InputUrl {
  @override
  TextEditingController build() {
    // The logic we previously had in our FutureProvider is now in the build method.
    return TextEditingController();
  }

  void setString(String data) {
    final newController = TextEditingController.fromValue(state.value);
    newController.text = data;
    state = newController;
  }

  String getValue() {
    return state.text;
  }
}