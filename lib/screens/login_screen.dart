import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  final Function(bool?) onLoginResult;
  const LoginScreen({super.key, required this.onLoginResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.setBool('isLoggedIn', true);
                onLoginResult.call(true);
              },
              child: const Text('Login successful'),
            ),
            ElevatedButton(
              onPressed: () {
                onLoginResult.call(false);
              },
              child: const Text('Login failed'),
            ),
          ],
        ),
      ),
    );
  }
}
