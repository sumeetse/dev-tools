import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaac/data/request_provider.dart';
import 'package:yaac/widgets/param_inputs.dart';

import 'auth_input.dart';

class RequestBodyInput extends ConsumerWidget {
  const RequestBodyInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ref.watch(requestProvider);
    return DefaultTabController(
      length: 4,
      child: Expanded(
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Params'),
                Tab(text: 'Headers'),
                Tab(text: 'Auth'),
                Tab(text: 'Body'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ParamInputs(),
                  Icon(Icons.directions_transit),
                  AuthInput(),
                  Icon(Icons.directions_bike),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
