import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yaac/data/params_provider.dart';

import '../models/param.dart';
part 'params_controller_provider.g.dart';

@riverpod
class InputNameControllerParams extends _$InputNameControllerParams {
  @override
  TextEditingController build() {
    // The logic we previously had in our FutureProvider is now in the build method.
    return TextEditingController();
  }

  void setParam(int index) {
    ref.read(inputParamsProvider.notifier).setName(index, state.text);
  }

}

@riverpod
class InputValueControllerParams extends _$InputValueControllerParams {
  @override
  TextEditingController build() {
    // The logic we previously had in our FutureProvider is now in the build method.
    return TextEditingController();
  }

  void setParam(int index) {
    ref.read(inputParamsProvider.notifier).setValue(index, state.text);
  }

}


