import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  runApp(const ProviderScope(child: App()));
}
