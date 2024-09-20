
import 'package:flutter/material.dart';
import '../../../../core/assets.dart';

class ProductItemImage extends StatelessWidget {
  const ProductItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        const Icon(Icons.favorite_outline_sharp, color: favoriteIconColor,),
        Image.asset(kTestImage),
      ],
    );
  }
}
