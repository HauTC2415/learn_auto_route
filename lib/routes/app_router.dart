import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/guard/auth_guard.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        //initial route
        AutoRoute(page: HomeScreenRoute.page, initial: true),
        //login route
        AutoRoute(page: LoginScreenRoute.page),

        //protected route
        AutoRoute(
          page: DashboardScreenRoute.page,
          guards: [AuthGuard()],
          children: [
            AutoRoute(
              initial: true,
              page: profileTabs.page,
              children: [
                AutoRoute(page: ProfileScreenRoute.page, initial: true),
                AutoRoute(page: ProfileDetailsScreenRoute.page),
              ],
            ),
            AutoRoute(
              page: addProductsTabs.page,
              children: [
                AutoRoute(page: ProductsScreenRoute.page, initial: true),
                AutoRoute(
                  page: ProductDetailsScreenRoute.page,
                  children: [
                    AutoRoute(
                        page: ProductCommentsScreenRoute.page, initial: true),
                    AutoRoute(page: ProductCommentDetailsScreenRoute.page)
                  ],
                ),
              ],
            ),
            AutoRoute(
              page: settingTabs.page,
              children: [
                AutoRoute(page: SettingsScreenRoute.page, initial: true),
              ],
            ),
          ],
        ),
        AutoRoute(page: ProfileDetailsWithoutTabsScreenRoute.page),
        AutoRoute(page: ProductCommentDetailsScreenRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}

const profileTabs = EmptyShellRoute('ProfileTabs');

const settingTabs = EmptyShellRoute('SettingTabs');

const addProductsTabs = EmptyShellRoute('AddProductsTabs');
