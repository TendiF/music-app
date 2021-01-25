import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'HomePageService.dart';
import 'Components/MusicCard.dart';
import '../../data/Model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: PageComponent(),
      ),
    );
  }
}

class PageComponent extends StatelessWidget {
  var musics = [
    Music('Bali', 'Rich Brian', 'Bali', false),
    Music('IDGAF', 'Dua Lipa', 'IDGAF (Remix II)', true),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
    Music('Love In My Pocket', 'Rich Brian', 'Love In My Pocket', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text) {},
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Search Artist",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height) - 128,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: musics
                      .map((music) => MusicCard(
                          songName: music.songName,
                          artist: music.artist,
                          album: music.album,
                          playing: music.playing))
                      .toList(),
                ),
              ),
              Spacer(),
              Card(
                margin: EdgeInsets.all(0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.skip_previous),
                      Spacer(
                        flex: 2,
                      ),
                      Icon(Icons.pause),
                      Spacer(
                        flex: 2,
                      ),
                      Icon(Icons.skip_next),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class PageComponent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<CounterBloc, int>(
//         builder: (_, count) {
//           return Center(
//             child: Text('$count', style: Theme.of(context).textTheme.headline1),
//           );
//         },
//       ),
//       floatingActionButton: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               child: const Icon(Icons.add),
//               onPressed: () =>
//                   context.read<CounterBloc>().add(CounterEvent.increment),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               child: const Icon(Icons.remove),
//               onPressed: () =>
//                   context.read<CounterBloc>().add(CounterEvent.decrement),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
