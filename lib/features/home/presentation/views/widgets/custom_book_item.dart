import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.5 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            // placeholder: (context, url) => Center(
            //   child: CircularProgressIndicator(),
            // ),
            errorWidget: (context, url, error) {
              return Icon(Icons.error_outline);
            },
          ),
        ));
  }
}
