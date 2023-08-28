import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utility/theme/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadiusCircular),
        color: Colors.grey[900],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: LottieBuilder.asset(
                        'asset/lottie/developer.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Welcome to my portfolio!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Hello, my name is Danu Septian',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'I design and develop Android app, iOS app,\nand Web with Flutter.',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Explore my works that fuse heart and technology:',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    'Explore',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
