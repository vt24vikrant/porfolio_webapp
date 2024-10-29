import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define your map of descriptions
    final Map<int, String> roles = {
      1: "App Developer",
      2: "Tech Enthusiast",
      3: "Problem Solver",
      4: "Competitive Programmer",
      5: "Gamer",
      // Add more descriptions here
    };

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Left Side (Text placeholders with typing animation)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Welcome, I'm Vikrant",
                        textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 500),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const SizedBox(height: 50),
                  // Bio section with rotating descriptions
                  Row(
                    children: [
                      const Text(
                        "I am a  ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: roles.values
                            .map((desc) => RotateAnimatedText(
                          desc,
                          textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                            .toList(),
                        repeatForever: true,
                        pause: const Duration(milliseconds: 1000),
                      ),
                    ],
                  ),
                ],
              ),

              // Spacing between text and GIF/Image
              const SizedBox(width: 40),

              // Right Side (GIF or image placeholder)
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white70, width: 1),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Image or GIF",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
