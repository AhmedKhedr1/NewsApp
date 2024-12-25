import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/widgets/loading_widget.dart';
import 'package:news_app/widgets/news_tile.dart';

class news_list_view extends StatelessWidget {
   news_list_view({
    super.key
  });

  @override


  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: news_tile(),
              );
            },
          ));
  }
}


