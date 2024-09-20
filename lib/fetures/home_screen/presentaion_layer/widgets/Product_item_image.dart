import 'package:flutter/material.dart';
import '../../../../core/assets.dart';

class ProductItemImage extends StatefulWidget {
  ProductItemImage({super.key, required this.image});

  String image;
  Icon favouriteDeActive  = const Icon(Icons.favorite_outline_sharp,color: favoriteIconColor);
  Icon favouriteActive  = const Icon(Icons.favorite,color: Colors.red);
  @override
  State<ProductItemImage> createState() => _ProductItemImageState();
}

class _ProductItemImageState extends State<ProductItemImage> {

  late Icon favourite;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    favourite = widget.favouriteDeActive;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(widget.image)
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
            child: GestureDetector(
              onTap: (){
                setState(() {
                  favourite = (favourite == widget.favouriteDeActive? widget.favouriteActive : widget.favouriteDeActive);
                });

              },
              child: favourite,


            ),
          ),
        ),
      ],
    );
  }
}
