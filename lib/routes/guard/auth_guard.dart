import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final isLoggedIn = pref.getBool('isLoggedIn') ?? false;
    if (isLoggedIn) {
      resolver.next(true);
      return;
    }
    router.push(LoginScreenRoute(
      onLoginResult: (isSuccess) {
        if (isSuccess!) {
          resolver.next(true);
          router.removeLast();
        } else {
          // resolver.next(false);
          //show snackbar
        }
      },
    ));
  }
}
