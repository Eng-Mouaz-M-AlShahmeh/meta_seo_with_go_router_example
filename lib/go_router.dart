/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_seo/meta_seo.dart';
import 'first_screen.dart';
import 'second_screen.dart';

// TODO: define app go_routes as you want
final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        // TODO:: Add MetaSEO just into Web platform condition
        if (kIsWeb) {
          // TODO:: Define MetaSEO object
          MetaSEO meta = MetaSEO();
          // TODO:: Add meta seo data for web app as you want
          meta.seoOGTitle('First Screen');
          meta.seoDescription('First Screen');
          meta.seoKeywords('Flutter, Dart, SEO, Meta, Web');
        }

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        // TODO:: Add MetaSEO just into Web platform condition
        if (kIsWeb) {
          // TODO:: Define MetaSEO object
          MetaSEO meta = MetaSEO();
          // TODO:: Add meta seo data for web app as you want
          meta.seoOGTitle('Second Screen');
          meta.seoDescription('Second Screen');
          meta.seoKeywords('Flutter, Dart, SEO, Meta, Web');
        }

        return const SecondScreen();
      },
    ),
  ],
);
