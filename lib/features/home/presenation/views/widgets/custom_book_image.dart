import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: imageUrl ?? 'https://via.placeholder.com/300x450?text=Book+',
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
