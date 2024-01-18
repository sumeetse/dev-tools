import 'package:flutter/material.dart';
import 'package:yaac/models/param.dart';
import 'package:yaac/widgets/text_field.dart';

import 'constants.dart';

class AuthInput extends StatelessWidget {

  AuthInput({super.key});


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.secondaryContainer, //background color of dropdown button
              border: Border.all(color: Theme.of(context).colorScheme.secondaryContainer, width:3), //border of dropdown button
              borderRadius: BorderRadius.circular(16), //border raiuds of dropdown button
              // boxShadow: <BoxShadow>[ //apply shadow on Dropdown button
              //   BoxShadow(
              //       color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
              //       blurRadius: 5) //blur radius of shadow
              // ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<AuthOptions>(
              value: AuthOptions.none,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (AuthOptions? value) {
              },
              items: AuthOptions.values.map<DropdownMenuItem<AuthOptions>>((AuthOptions authOption) {
                return DropdownMenuItem<AuthOptions>(
                  value: authOption,
                  child: Text(authOption.name.displayText()),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
