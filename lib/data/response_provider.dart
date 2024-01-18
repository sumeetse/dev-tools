

import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:yaac/data/url_provider.dart';
part 'response_provider.g.dart';



@riverpod
class RequestResponse extends _$RequestResponse {

  @override
  Future<Response<dynamic>?> build() async {
    // The logic we previously had in our FutureProvider is now in the build method.
    return null;
  }

  void getResponse() async {
    String input = ref.watch(inputUrlProvider.notifier).getValue();
    final dio = Dio();
    state = AsyncData(await dio.get(input));
  }
}