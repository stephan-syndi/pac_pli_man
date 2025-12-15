import 'package:flutter/material.dart';

import 'app_config.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConfig.webGLLoadingDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(AppConfig.logoPath),
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 60),
          const Center(
            child: SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                color: AppConfig.webGLSpinerColor,
                strokeWidth: 10,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(AppConfig.webGLLoadingText,
              style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    );
  }
}
