import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // AutoRouter.of(context).push(const DashboardRoute());
                AutoRouter.of(context).pushAndPopUntil(
                  const DashboardScreenRoute(),
                  predicate: (route) => false,
                );
              },
              child: const Text('Go to DashboardRoute (protected)'),
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.clear();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
