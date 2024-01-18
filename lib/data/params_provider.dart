import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/param.dart';
part 'params_provider.g.dart';

@riverpod
class InputParams extends _$InputParams {
  @override
  List<InputParam> build() {
    // The logic we previously had in our FutureProvider is now in the build method.
    return [
      InputParam(name: "1", value: "2", index: 0),
      InputParam(name: "3", value: "4", index: 1),
      InputParam(name: "5", value: "6", index: 2)
    ];
  }

  void setString() {
    state = [];
  }

  void setName(int index, String name) {
    debugPrint("Setting ${state[index].toString()} name to '$name'");
    state[index].name = name;
    removeEmpty(index);
  }

  void setValue(int index, String value) {
    debugPrint("Setting param at index $index value to '$value'");
    state[index].value = value;
    removeEmpty(index);
  }

  void removeEmpty(int index) {
    var param = state[index];
    if (param.name == "" && param.value == "") {
      debugPrint("Removing element at index $index from params of length ${state.length}");
      var newstate = [...state.sublist(0, param.index), ...state.sublist(param.index+1, state.length)];
      state = newstate;
    }
  }
}
