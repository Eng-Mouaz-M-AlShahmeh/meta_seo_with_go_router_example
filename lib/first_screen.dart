/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First Screen')),
        body: Center(
            child: ElevatedButton(
          onPressed: () => context.go('/second_screen'),
          child: const Icon(Icons.arrow_forward_outlined),
        )));
  }
}
