/* Developed by Eng Mouaz M. AlShahmeh */
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
        // TODO:: Define MetaSEO object with optional needed attributes
        MetaSEO meta = MetaSEO(
            author: 'Eng Mouaz M AlShahmeh',
            description: 'First Screen',
            keywords: 'Flutter, Dart, SEO, Meta, Web');

        // TODO:: add meta seo data for web app
        meta.seoAuthor();
        meta.seoDescription();
        meta.seoKeywords();

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        // TODO:: Define MetaSEO object with optional needed attributes
        MetaSEO meta = MetaSEO(
            author: 'Eng Mouaz M AlShahmeh',
            description: 'Second Screen',
            keywords: 'Flutter, Dart, SEO, Meta, Web');

        // TODO:: add meta seo data for web app
        meta.seoAuthor();
        meta.seoDescription();
        meta.seoKeywords();

        return const SecondScreen();
      },
    ),
  ],
);
