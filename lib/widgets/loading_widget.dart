import 'package:flutter/material.dart';

class loading_widget extends StatelessWidget {
  const loading_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Center(child:  CircularProgressIndicator()));
  }
}