import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_web/utility/widget/loading.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            loadingProgress();
            await Future.delayed(
              const Duration(seconds: 3),
            );
            Get.back();
          },
          child: const Text('Button'),
        ),
      ),
    );
  }
}
