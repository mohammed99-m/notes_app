import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivep2/constatns.dart';
import 'package:hivep2/models/note_adapter.dart';
import 'package:hivep2/models/note_model.dart';
import 'package:hivep2/simple_bloc_observel.dart';
import 'package:hivep2/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<NoteModel>(BoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(brightness: Brightness.dark),
        home: const NotesView());
  }
}
