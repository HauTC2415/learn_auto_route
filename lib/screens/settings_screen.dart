import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.blue,
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).popUntilRoot();
                  },
                  child: const Text('Go back to root'),
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: List.generate(
                    50,
                    (index) => ListTile(
                      title: Text('Item $index'),
                      onTap: () {
                        // AutoRouter.of(context).popUntilRoot();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
