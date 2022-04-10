import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.secondary,
    );
  }
}
