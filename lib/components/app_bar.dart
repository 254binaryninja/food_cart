// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MyAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: true,
      pinned: true,
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text("Sunset Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        centerTitle: true,
        title: title,
        titlePadding: EdgeInsets.all(2),
        expandedTitleScale: 1.2,
      ),
    );
  }
}
