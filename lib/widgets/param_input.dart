import 'package:flutter/material.dart';
import 'package:yaac/models/param.dart';
import 'package:yaac/widgets/param_text_field.dart';
import 'package:yaac/widgets/text_field.dart';

import '../data/params_controller_provider.dart';
import 'constants.dart';

class ParamInput extends StatelessWidget {

  final InputParam param;

  const ParamInput({super.key, required this.param});


  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Checkbox(value: false, onChanged: (va) {}),
        kWidth16,
        Expanded(flex: 1, child: ParamTextFieldWidget(initialValue: param.name, index: param.index, provider: inputNameControllerParamsProvider, notifier: inputNameControllerParamsProvider.notifier,)),
        kWidth16,
        Expanded(flex: 1, child: ParamTextFieldWidget(initialValue: param.value, index: param.index, provider: inputValueControllerParamsProvider, notifier: inputValueControllerParamsProvider.notifier,)),
        kWidth16,
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit, size: 18,)),
        kWidth16,
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete, size: 18,)),
        kWidth16,
      ],
    );
  }
}
