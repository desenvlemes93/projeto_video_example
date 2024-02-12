import 'package:flutter/material.dart';
import 'package:flutter_carousel_media_slider/carousel_media.dart';
import 'package:flutter_carousel_media_slider/flutter_carousel_media_slider.dart';
import 'package:projeto_video_exemplo/app/pages/teste_video_analise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarouselMedia> media = [
    CarouselMedia(
      mediaUrl: 'assets/ju/t.mp4',
      mediaName: 'Aviao',
      mediaType: CarouselMediaType.video,
      carouselImageSource: CarouselImageSource.asset,
    ),
    CarouselMedia(
      mediaUrl: 'https://www.youtube.com/watch?v=T5AnwFI4Xnw',
      mediaName: 'Aviao',
      mediaType: CarouselMediaType.video,
      carouselImageSource: CarouselImageSource.asset,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const TesteVideoAnalise(),
                ),
              );
            },
            child: const Text('Video'),
          ),
          Center(
            child: SizedBox(
              width: 400,
              height: 400,
              child: FlutterCarouselMediaSlider(
                autoPlayAnimationDuration: const Duration(seconds: 60),
                placeholder: const CircularProgressIndicator(
                  color: Colors.black,
                ),
                carouselMediaList: media,
                onPageChanged: () {},
              ),
            ),
          ),
          Slider(
            value: 0,
            onChanged: (_) {},
          ),
        ],
      ),
    );
  }
}
