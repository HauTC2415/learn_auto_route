import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  final String title;
  const ProductDetailsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details',
              style: Theme.of(context).textTheme.titleMedium),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $title',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            const Text('This is a product details screen'),
            const SizedBox(height: 20),
            Text('Comments', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            const SizedBox(
              height: 400,
              // child: ProductCommentDetailsScreen(),
              child: AutoRouter(),
            )
          ],
        ));
  }
}
