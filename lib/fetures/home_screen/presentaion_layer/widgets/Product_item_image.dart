import 'package:flutter/material.dart';
import '../../../../core/assets.dart';

class ProductItemImage extends StatelessWidget {
  const ProductItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(kTestImage),
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
