import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaac/data/params_provider.dart';
import 'package:yaac/widgets/param_input.dart';

import '../models/param.dart';
import 'constants.dart';

class ParamInputs extends ConsumerWidget {
  const ParamInputs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<InputParam> params = ref.watch(inputParamsProvider);

    debugPrint('Build Param inputs');
    return ListView(
      children: [
        kHeight16,
        ...params.map((param) {
          return Column(
            children: [
              ParamInput(param: param,),
              // Row(
              //   children: [
              //     Checkbox(value: false, onChanged: (va) {}),
              //     kWidth16,
              //     Expanded(flex: 1, child: TextFieldWidget(initialValue: param.name, hint: 'Label Value',)),
              //     kWidth16,
              //     Expanded(flex: 1, child: TextFieldWidget(initialValue: param.value, hint: 'Label Value',)),
              //     kWidth16,
              //     IconButton(onPressed: () {}, icon: const Icon(Icons.edit, size: 18,)),
              //     kWidth16,
              //     IconButton(onPressed: () {}, icon: const Icon(Icons.delete, size: 18,)),
              //     kWidth16,
              //   ],
              // ),
              Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer, thickness: 1,
              ),
            ],
          );
        }).toList()
      ],
    );
  }
}

