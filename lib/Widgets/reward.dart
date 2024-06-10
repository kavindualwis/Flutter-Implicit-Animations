import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RewardWidget extends StatefulWidget {
  const RewardWidget({super.key});

  @override
  State<RewardWidget> createState() => _RewardWidgetState();
}

class _RewardWidgetState extends State<RewardWidget> {
  //Rewarded State Controller
  bool isRewarded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isRewarded = !isRewarded;
        });
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          AnimatedContainer(
            width: 150,
            height: 60,
            curve: Curves.linear,
            decoration: BoxDecoration(
              color: isRewarded
                  ? const Color.fromARGB(255, 253, 130, 121)
                  : const Color.fromARGB(255, 181, 137, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            duration: const Duration(milliseconds: 800),
            child: Center(
              child: isRewarded
                  ? const Text(
                      'Collect Your Reward',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  : const Text(
                      'Reward Collected',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
            ),
          ),
          if (isRewarded == false)
            Lottie.asset(
              'assets/Animation1.json',
              repeat: false,
            ),
        ],
      ),
    );
  }
}
