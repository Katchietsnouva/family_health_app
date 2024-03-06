import 'package:flutter/material.dart';

import '../Widgets/AppBarWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
        ],
      ),
    );
  }
}
