
import 'package:flutter/material.dart';
import 'package:implicit_animations/Widgets/cart.dart';
import 'package:implicit_animations/Widgets/container_color.dart';
import 'package:implicit_animations/Widgets/favourite.dart';
import 'package:implicit_animations/Widgets/reward.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Implicit Animations',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Cart Added Button
            CartWidget(),

            SizedBox(height: 30),

            //Favourite
            FavouriteWidget(),

            SizedBox(height: 30),

            //Color Changing Container
            ContainerColor(),

            SizedBox(height: 30),

            //Reward
            RewardWidget(),
          ],
        ),
      ),
    );
  }
}
