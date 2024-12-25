import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/widgets/loading_widget.dart';
import 'package:news_app/widgets/news_list_view.dart';

class newslistview_builder extends StatelessWidget {
  newslistview_builder({
    super.key, required this.category, 
  });
final String category;
 
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
