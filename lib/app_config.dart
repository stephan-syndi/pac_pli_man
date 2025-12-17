import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppConfig {
  static const String webGLEndpoint =
      'https://play.unity.com/api/v1/games/game/a1d87280-3d6e-4514-bc18-76e2e51e08c5/build/latest/frame';

  static const String logoPath = 'assets/images/Logo.png';
  static const String loadingBackgroundPath =
      'assets/images/back-3.png';

  static const List<DeviceOrientation> webGLAllowedOrientations = [
    // DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ];

  //========================= Loading Screen ====================//
  static const String webGLLoadingText = 'Initialization...';
  static const Color webGLSpinerColor = Color(0xFFFFFFFF);
  static const Color webGLLoadingTextColor = Color(0xFCFFFFFF);
  static const Decoration webGLLoadingDecoration = const BoxDecoration(
    //закоментировать если не нужен градиент
    // gradient: LinearGradient(
    //   begin: Alignment.topCenter,
    //   end: Alignment.bottomCenter,
    //   colors: [
    //     Color(0xFF7F3CCA),
    //     Color(0xFF23003C),
    //   ],
    // ),

    //закоментировать если не нужен фон из изображения
    image: DecorationImage(
      image: AssetImage(loadingBackgroundPath),
      fit: BoxFit.cover,
    ),
  );
}
