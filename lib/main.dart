import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:tim_task/app/theme/app_theme.dart';
import 'package:tim_task/ui/splash/splash_view.dart';

void main() {
  runApp(const ProviderScope(child: TimTaskApp()));
}

class TimTaskApp extends StatelessWidget {
  const TimTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GrockKeyboardClose(
      child: MaterialApp(
        title: "Tim Task",
        debugShowCheckedModeBanner: false,
        navigatorKey: Grock.navigationKey,
        scaffoldMessengerKey: Grock.scaffoldMessengerKey,
        theme: AppTheme.ligthTheme(context),
        darkTheme: AppTheme.darkTheme(context),
        themeMode: ThemeMode.system,
        home: const SplashView(),
      ),
    );
  }
}
