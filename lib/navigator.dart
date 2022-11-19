import 'package:flutter/material.dart';


navigatePush(BuildContext context, Widget widget) {
  return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget, fullscreenDialog: true));
}

navigatePop(BuildContext context) {
  return Navigator.of(context).pop(context);
}
