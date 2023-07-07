import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/song_page/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            child: Column(
              children: [
                //back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: NeuBox(
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    Text(
                      'P L A Y L I S T',
                    ),
                    SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: NeuBox(
                        child: Icon(
                          Icons.menu,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25.0,
                ),
                //cover art, artist name, song name
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'lib/UI/song_page/images/cover_art.jpg',
                          height: 410,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kota The Friend',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  'Birdie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                //start time, shuffle button, repeat button, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '0:00',
                    ),
                    Icon(Icons.shuffle,),
                    Icon(Icons.repeat,),
                    Text(
                      '4:22',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                //linear bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                    barRadius: Radius.circular(8),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),

                //previous song, pause play, skip next song
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child:NeuBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                            child: Icon(
                              Icons.play_arrow,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                      Expanded(

                        child:NeuBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
