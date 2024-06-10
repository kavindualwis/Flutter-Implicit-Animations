import 'package:flutter/material.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  //Cart state controller
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        curve: Curves.linear,
        width: isExpanded ? 75 : 150,
        height: isExpanded ? 70 : 55,
        decoration: BoxDecoration(
          color: isExpanded ? Colors.deepPurple : Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: isExpanded
              ? const Icon(
                  Icons.shopping_cart_checkout_outlined,
                  color: Colors.white,
                  size: 35,
                )
              : const FittedBox(
                  fit: BoxFit.cover,
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Added To Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
