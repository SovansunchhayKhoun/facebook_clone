import 'package:flutter/material.dart';
import 'package:project/providers/layout_provider.dart';
import 'package:project/routes/app_route.dart';
import 'package:project/screens/layout_screen.dart';
import 'package:project/theme/app_theme.dart';
import 'package:project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => LayoutProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: AppRoute.routes,
      // theme: appTheme,
      home: const LayoutScreen(),
      theme: appTheme(context),
    );
  }
}
