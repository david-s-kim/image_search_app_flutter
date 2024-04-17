import 'package:flutter/material.dart';

import '../../../domain/model/photo.dart';

class ImageCardWidget extends StatelessWidget {
  final Photo photo;

  const ImageCardWidget({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          photo.url,
          fit: BoxFit.cover,
        ),
      ),
          Text('조회수: ${photo.views.toString()}회'),
    ]);
  }
}
