import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';

class TesteVideoAnalise extends StatefulWidget {
  const TesteVideoAnalise({super.key});

  @override
  State<TesteVideoAnalise> createState() => _TesteVideoAnaliseState();
}

class _TesteVideoAnaliseState extends State<TesteVideoAnalise> {
  List<String> testeDados = [
    'assets/ju/t.mp4',
    'assets/ju/teste2.mp4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: testeDados.length,
        itemBuilder: (context, index) {
          var analise = testeDados[index];
          return Center(
            child: Card(
              child: NativeVideoView(
                
                keepAspectRatio: true,
                enableVolumeControl: true,
                showMediaController: true,
                onCreated: (controller) {
                  controller.setVideoSource(
                    analise.toString(),
                    sourceType: VideoSourceType.asset,
                  );
                },
                onPrepared: (controller, info) {
                  controller.play();
                },
                onError: (controller, what, extra, message) {
                  print('Player Error ($what | $extra | $message)');
                },
                onCompletion: (controller) {
                  print('Video completed');
                },
                onProgress: (progress, duration) {
                  print('$progress | $duration');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
