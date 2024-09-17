import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';

import '../routes/app_router.dart';

abstract class BaseWidget extends StatelessWidget {
  const BaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onVisibilityGained: onForegroundLost,
      onForegroundGained: onForegroundGained,
      child: builder(context),
    );
  }

  Widget builder(BuildContext context);

  Future<void> onForegroundGained() {
    return Future.value();
  }

  void onForegroundLost() {}
}

@RoutePage()
class ProfileScreen extends BaseWidget {
  const ProfileScreen({super.key});

  @override
  Widget builder(BuildContext context) {
    return ColoredBox(
      color: Colors.green,
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context)
                      .push(const ProfileDetailsWithoutTabsScreenRoute());
                },
                child: const Text('Go to ProfileDetailsWithoutTabsRoute'),
              ),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context)
                      .push(const ProfileDetailsScreenRoute());
                },
                child: const Text('Go to ProfileDetailsRoute'),
              ),
            ]),
      ),
    );
  }

  @override
  Future<void> onForegroundGained() {
    log('ProfileScreen onForegroundGained');
    return super.onForegroundGained();
  }
}
