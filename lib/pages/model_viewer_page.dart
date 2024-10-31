import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ModelViewerPage extends StatefulWidget {
  const ModelViewerPage({super.key});

  @override
  ModelViewerPageState createState() => ModelViewerPageState();
}

class ModelViewerPageState extends State<ModelViewerPage> {
  late Object model;

  @override
  void initState() {
    super.initState();
    model = Object(
      fileName: 'assets/Joyful_Jump.obj',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D Model Viewer'),
      ),
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 10;
          },
        ),
      ),
    );
  }
}
