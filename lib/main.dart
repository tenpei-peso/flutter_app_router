import 'package:app_rputer/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


void main() async {
  runApp(ProviderScope(child: App()));
}
