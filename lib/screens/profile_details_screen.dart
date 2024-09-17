import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';

@RoutePage()
class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onFocusGained: () {},
      onFocusLost: () {},
      onVisibilityGained: () {},
      onVisibilityLost: () {},
      onForegroundGained: () {
        log('ProfileDetailsScreen entered foreground');
      },
      onForegroundLost: () {
        log('ProfileDetailsScreen sent to background');
      },
      child: const Scaffold(
        backgroundColor: Colors.blue,
        body: Center(child: Text('Profile Details Screen')),
      ),
    );
  }
}
