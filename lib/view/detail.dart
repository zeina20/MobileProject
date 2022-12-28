import 'package:flutter/material.dart';

import '../data/homedata.dart';
import 'moviebuilder.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  // final String? index;
  // const Detail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, int index) {
                  return moviebuilder(
                    index: index,
                    title: movies[index].title,
                    image: movies[index].image,
                    rating: movies[index].rating,
                  );
                }),
          )
        ],
      ),
    );
    
  }
}
