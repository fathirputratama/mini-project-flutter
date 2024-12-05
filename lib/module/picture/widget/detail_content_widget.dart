import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  const DetailContentWidget({
    super.key,
    required this.imageUrl,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Taken by: $author',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
