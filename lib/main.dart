import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wafarha_app/app.dart';
import 'package:wafarha_app/app_config.dart';
import 'package:wafarha_app/src/features/home/presentation/homa_page.dart';
import 'package:wafarha_app/src/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      UncontrolledProviderScope(container: container, child: const MainApp()));
}

final container = ProviderContainer(
  overrides: [
    configProvider.overrideWith((ref) => DevConfig()),
  ],
  observers: [ProviderLogger()],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
