import 'package:flutter/material.dart';
import 'package:project/constants/route_constants.dart';
import 'package:project/screens/feeds/feeds_screen.dart';
import 'package:project/screens/layout_page.dart';
import 'package:project/theme/app_theme.dart';
import 'package:project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      )
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
      routes: {
        RouteConstant.feedsScreen.name: (context) => const FeedsScreen(),
      },
      // theme: appTheme,
      home: const LayoutScreen(),
      theme: appTheme(context),
    );
  }
}
