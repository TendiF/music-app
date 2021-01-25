import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/MusicAppBlocObserver.dart';
import 'pages/HomePage/HomePage.dart';

void main() {
  Bloc.observer = MusicAppBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
