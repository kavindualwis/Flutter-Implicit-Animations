import 'package:flutter/material.dart';

class ContainerColor extends StatefulWidget {
  const ContainerColor({super.key});

  @override
  State<ContainerColor> createState() => _ContainerColorState();
}

class _ContainerColorState extends State<ContainerColor> {
  //Colors Change State Controller
  bool isColorChanged = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isColorChanged = !isColorChanged;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        curve: Curves.linear,
        width: isColorChanged ? 150 : 200,
        height: isColorChanged ? 60 : 80,
        decoration: BoxDecoration(
          gradient: isColorChanged
              ? const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : const LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.teal,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            isColorChanged ? 'Tap To Change Color' : 'Color Changed',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: isColorChanged ? 14 : 20,
            ),
          ),
        ),
      ),
    );
  }
}
