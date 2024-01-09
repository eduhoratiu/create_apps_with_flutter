import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../common/strings.dart' as strings;
import '../data/emojis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<http.Response> futureAlbum;

  int _emojisIndex = 0;

  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos/1'));
    // return http.get(Uri.parse(
    // 'https://open-meteo.com/v1/forecast?latitude=48.8534&longitude=2.3488&hourly=temperature_2m,relativehumidity_2m,precipitation,winddirection_10m,windspeed_10m,cloudcover_2m&timezone=Europe/Paris&current_weather=true&lang=fr'));
  }

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(strings.homeScreenTitle),
        ),
        body: Center(
          child: Text(
            '${emojis[_emojisIndex].value} - ${emojis[_emojisIndex].description}',
            style: const TextStyle(fontSize: 50),
          ),
        ),
        // body: FutureBuilder<http.Response>(
        //   future: futureAlbum,
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return Center(
        //         child: Text(snapshot.data!.body),
        //       );
        //     } else if (snapshot.hasError) {
        //       return Center(
        //         child: Text('${snapshot.error}'),
        //       );
        //     }

        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   },
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _emojisIndex = (_emojisIndex + 1) % emojis.length;
            });
          },
          child: const Icon(Icons.refresh),
        ));
  }
}
