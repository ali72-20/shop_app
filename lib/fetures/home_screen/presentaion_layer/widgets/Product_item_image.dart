import 'package:flutter/material.dart';
import '../../../../core/assets.dart';

class ProductItemImage extends StatelessWidget {
  ProductItemImage({super.key, required this.image});

  String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 175,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(image)
            )
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: const Icon(
              Icons.favorite_outline_sharp,
              color: favoriteIconColor,
            ),
          ),
        ),
      ],
    );
  }
}
