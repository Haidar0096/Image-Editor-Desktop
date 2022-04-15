import 'package:flutter/material.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.secondary,
    );
  }
}
