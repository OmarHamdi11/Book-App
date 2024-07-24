import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl ?? 'https://via.placeholder.com/300x450?text=Book+',
            ),
          ),
        ),
      ),
    );
  }
}
