import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool canPop = false;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        setState(() {
          canPop = !didPop;
        });
        ScaffoldMessenger.of(context)
            .showSnackBar(
              const SnackBar(
                content: Text('Press one more time to exit'),
                duration: Duration(milliseconds: 1500),
              ),
            )
            .closed
            .then((reason) {
          if (reason == SnackBarClosedReason.timeout) {
            setState(() {
              canPop = false;
            });
          }
        });
      },
      child: AutoTabsScaffold(
        routes: [
          profileTabs(),
          addProductsTabs(),
          settingTabs(),
        ],
        transitionBuilder: (context, child, animation) => FadeTransition(
          opacity: animation,
          // the passed child is technically our animated selected-tab page
          child: child,
        ),
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (v) {
              if (v == tabsRouter.activeIndex) {
                if (tabsRouter.topRoute.route.path.isNotEmpty) {
                  tabsRouter.topRoute.router.maybePop();
                }
              } else {
                tabsRouter.setActiveIndex(v);
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          );
        },
      ),
    );
  }

  Future<bool?> handleBack(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('PopScope'),
          content: const Text('PopScope is disabrled'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop(true);
                SystemNavigator.pop();
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop(false);
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }
}
