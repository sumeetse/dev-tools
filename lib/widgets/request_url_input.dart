import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaac/data/request_provider.dart';
import 'package:yaac/widgets/constants.dart';
import 'package:yaac/widgets/url_input_field.dart';

import '../data/response_provider.dart';
import '../models/request_model.dart';

class RequestUrlInput extends ConsumerWidget {
  const RequestUrlInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    RequestModel request = ref.watch(requestProvider);

    return Row(
      children: [
        Expanded(
          flex: 12,
          child: UrlInputField(controller: request.url,),
        ),
        kWidth16,
        ElevatedButton(
          onPressed: () {
            print(ref.read(requestProvider.notifier).getUrl());
          },
          child: Text('Send'),
        )
      ],
    );
  }
}
