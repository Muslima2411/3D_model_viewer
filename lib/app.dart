import 'package:app_3d_animation/pages/model_viewer_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Model Viewer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ModelViewerPage(),
    );
  }
}
