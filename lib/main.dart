import 'package:flutter/material.dart';
import 'package:projeto_video_exemplo/app/pages/home_page.dart';
import 'package:projeto_video_exemplo/app/pages/teste_video_analise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/video':(_) => const TesteVideoAnalise(),
      },
    );
  }
}
