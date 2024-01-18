import 'package:flutter/material.dart';

class DropdownButtonWidget<T> extends StatelessWidget {

  final List<T> options;
  final T value;

  const DropdownButtonWidget({super.key, required this.options, required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: value,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      underline: Container(
        height: 2,
      ),
      onChanged: (T? value) {
      },
      items: options.map<DropdownMenuItem<T>>((T authOption) {
        return DropdownMenuItem<T>(
          value: authOption,
          child: Text(authOption.name.displayText()),
        );
      }).toList(),
    );
  }
}
