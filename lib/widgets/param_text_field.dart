import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaac/data/params_controller_provider.dart';
import 'package:yaac/widgets/text_field.dart';

import 'constants.dart';

class ParamTextFieldWidget extends ConsumerStatefulWidget {
  String? initialValue;
  int index;
  ProviderListenable<TextEditingController> provider;
  Refreshable notifier;

  ParamTextFieldWidget({super.key, this.initialValue, required this.index, required this.provider, required this.notifier});

  @override
  ConsumerState<ParamTextFieldWidget> createState() =>
      _ParamNameTextFieldWidgetState();
}

class _ParamNameTextFieldWidgetState
    extends ConsumerState<ParamTextFieldWidget> {
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {

    if (controller != null) {
      controller!.text = widget.initialValue ?? "";
      controller!.selection = TextSelection.fromPosition(TextPosition(offset: controller!.text.length));
    }

    return TextFieldWidget(
      controller: controller,
      initialValue: controller == null ? widget.initialValue : null,
      hint: 'Param Name',
      onTap: () {
        setState(() {
          controller = ref.read(widget.provider);
        });
      },
      onChanged: (val) {
        ref.read(widget.notifier).setParam(widget.index);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (controller != null) {
      controller!.dispose();
    }

  }
}
