// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DashboardScreen]
class DashboardScreenRoute extends PageRouteInfo<void> {
  const DashboardScreenRoute({List<PageRouteInfo>? children})
      : super(
          DashboardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({
    Key? key,
    required dynamic Function(bool?) onLoginResult,
    List<PageRouteInfo>? children,
  }) : super(
          LoginScreenRoute.name,
          args: LoginScreenRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginScreenRouteArgs>();
      return LoginScreen(
        key: args.key,
        onLoginResult: args.onLoginResult,
      );
    },
  );
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({
    this.key,
    required this.onLoginResult,
  });

  final Key? key;

  final dynamic Function(bool?) onLoginResult;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [ProductCommentDetailsScreen]
class ProductCommentDetailsScreenRoute extends PageRouteInfo<void> {
  const ProductCommentDetailsScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProductCommentDetailsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductCommentDetailsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductCommentDetailsScreen();
    },
  );
}

/// generated route for
/// [ProductCommentsScreen]
class ProductCommentsScreenRoute extends PageRouteInfo<void> {
  const ProductCommentsScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProductCommentsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductCommentsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductCommentsScreen();
    },
  );
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsScreenRoute
    extends PageRouteInfo<ProductDetailsScreenRouteArgs> {
  ProductDetailsScreenRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailsScreenRoute.name,
          args: ProductDetailsScreenRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsScreenRouteArgs>();
      return ProductDetailsScreen(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class ProductDetailsScreenRouteArgs {
  const ProductDetailsScreenRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductDetailsScreenRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ProductsScreen]
class ProductsScreenRoute extends PageRouteInfo<void> {
  const ProductsScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProductsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductsScreen();
    },
  );
}

/// generated route for
/// [ProfileDetailsScreen]
class ProfileDetailsScreenRoute extends PageRouteInfo<void> {
  const ProfileDetailsScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProfileDetailsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileDetailsScreen();
    },
  );
}

/// generated route for
/// [ProfileDetailsWithoutTabsScreen]
class ProfileDetailsWithoutTabsScreenRoute extends PageRouteInfo<void> {
  const ProfileDetailsWithoutTabsScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProfileDetailsWithoutTabsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsWithoutTabsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileDetailsWithoutTabsScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsScreenRoute extends PageRouteInfo<void> {
  const SettingsScreenRoute({List<PageRouteInfo>? children})
      : super(
          SettingsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}
