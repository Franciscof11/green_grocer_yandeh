import 'package:flutter/material.dart';

class UiController {
  final BuildContext context;

  UiController(this.context);

  bool get isMobile => MediaQuery.of(context).size.width < 550;
}
