

import 'package:flutter/material.dart';

class FileExplorer extends StatelessWidget {
  const FileExplorer({super.key});
  final List drawerItems = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (BuildContext context, int i) {
          return TextButton(
            onPressed: () {},
            child: Text(
              'Some collection',
            ),
          );
        },
      ),
    );
  }
}
