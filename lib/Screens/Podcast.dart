import 'package:flutter/material.dart';

class Podcast extends StatelessWidget {
  const Podcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reproductor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Charli_XCX_-_Brat_%28album_cover%29.png/1200px-Charli_XCX_-_Brat_%28album_cover%29.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'brat',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Slider(
              value: 0.5,
              onChanged: (value) {},
              min: 0,
              max: 1,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.replay_10),
                  iconSize: 36,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 48,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.forward_30),
                  iconSize: 36,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('00:00'),
                Text('00:41'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}