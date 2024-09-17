import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileDetailsWithoutTabsScreen extends StatelessWidget {
  const ProfileDetailsWithoutTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Details Without Tabs'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).removeLast();
              },
              child: const Text('Go back'),
            ),
          ),
          Text(AutoRouter.of(context).stack.toString()),
        ],
      ),
    );
  }
}
