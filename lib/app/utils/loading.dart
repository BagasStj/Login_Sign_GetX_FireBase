import 'package:flutter/material.dart';

class LoadingMapView extends StatelessWidget {
  const LoadingMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
