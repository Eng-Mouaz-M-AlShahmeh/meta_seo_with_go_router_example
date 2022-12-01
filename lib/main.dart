/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'go_router.dart';

void main() {
  // TODO: add this line if you want to hide hash sign # at web routes
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: modify material app with go_router attributes
    return MaterialApp.router(
      title: 'Flutter Development GoRouter with MetaSEO Example',
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}