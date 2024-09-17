import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductCommentsScreen extends StatelessWidget {
  const ProductCommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: List.generate(
        5,
        (index) => ListTile(
          title: Text('Comment $index'),
          subtitle: const Text('This is a comment'),
          trailing: TextButton(
            onPressed: () {
              AutoRouter.of(context)
                  .push(const ProductCommentDetailsScreenRoute());
            },
            child: const Text('Read'),
          ),
        ),
      ),
    );
  }
}
