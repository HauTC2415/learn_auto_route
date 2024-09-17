import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SafeArea(
        child: Expanded(
          child: ListView(
            shrinkWrap: true,
            children: List.generate(
              50,
              (index) => ListTile(
                title: Text('Product $index'),
                onTap: () {
                  AutoRouter.of(context).push(
                    ProductDetailsScreenRoute(title: 'Product $index'),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
