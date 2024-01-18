import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yaac/models/request_model.dart';

part 'request_provider.g.dart';

@riverpod
class Request extends _$Request {
  @override
  RequestModel build() {
    // The logic we previously had in our FutureProvider is now in the build method.
    return RequestModel(
      url: TextEditingController()
    );
  }

  void setUrl(String url) {
    TextEditingController newUrl = TextEditingController.fromValue(state.url.value);
    newUrl.text = url;
    state.url = newUrl;
  }

  String getUrl() {
    return state.url.text;
  }
}
