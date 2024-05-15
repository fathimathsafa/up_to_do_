import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:provider/provider.dart';
import 'package:up_to_do/presentation/home_screen/controller/note_controller.dart';
import 'package:up_to_do/presentation/search_screen/controller/search_screen_controller.dart';
import 'package:up_to_do/presentation/splash_Screen/view/splash_screen.dart';
import 'package:up_to_do/repository/note_card-model/note_card_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteCardModelAdapter());
  await Hive.openBox<NoteCardModel>('testBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => NoteCardController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}