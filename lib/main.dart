import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:new_flutter_cubit_project/views/home_screen.dart';

import 'di_container/di.dart';

late GetIt getIt;

void main() async {
  getIt = GetIt.instance;
  await startGetIt(getIt);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}