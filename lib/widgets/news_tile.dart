import 'package:flutter/material.dart';

class news_tile extends StatelessWidget {
  const news_tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, right: 10, left: 10, top: 5),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5), child: Image.asset('assets/technology.jpeg')),
         const Text(
           'tessssssssssssssst',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
          ),
        const  Text(
                "subtitle is not available ..... please try again ",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
