import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  //Favourite State Controller
  bool isFavourite = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        curve: Curves.linear,
        width: isFavourite ? 150 : 200,
        height: isFavourite ? 60 : 80,
        decoration: BoxDecoration(
          color: isFavourite
              ? const Color.fromARGB(255, 252, 115, 161)
              : Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: isFavourite
              ? const Text(
                  'Add To Favourite',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              : const Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 60,
                ),
        ),
      ),
    );
  }
}
