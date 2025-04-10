import 'package:creartify/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showNotificationToast(BuildContext context, {String? msg}) {
  Fluttertoast.showToast(
    msg: msg ?? context.l10n.toastError,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 2,
    fontSize: 14.0,
    backgroundColor: context.colors.inactiveLight,
  );
}