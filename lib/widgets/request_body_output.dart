import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaac/data/response_provider.dart';
import 'package:yaac/widgets/async_value_widget.dart';

class RequestBodyOutput extends ConsumerWidget {
  const RequestBodyOutput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Response<dynamic>?> response =
        ref.watch(requestResponseProvider);

    return AsyncValueWidget(
      value: response,
      data: (Response<dynamic>? response) {
        TextEditingController outputController = TextEditingController();

        if (response != null) {
          outputController.text = response.data.toString();
        }

        return DefaultTabController(
          length: 2,
          child: Expanded(
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Request'),
                    Tab(text: 'Response'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          readOnly: true,
                          controller: outputController,
                          expands: true,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          readOnly: true,
                          controller: outputController,
                          expands: true,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
