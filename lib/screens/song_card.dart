import 'package:flutter/material.dart';
import 'package:music_app/models/song_model.dart';

class SongCard extends StatelessWidget {
  final Song songs;
  const SongCard({super.key, required this.songs});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(
                    songs.coverUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.40,
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white.withOpacity(0.8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      songs.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      songs.description,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.play_circle,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}