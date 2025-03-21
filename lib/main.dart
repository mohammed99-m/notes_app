import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivep2/constatns.dart';
import 'package:hivep2/models/note_adapter.dart';
import 'package:hivep2/views/notes_view.dart';

import 'cubits/add_note_cubit/add_note_cubit.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(BoxName);
  Hive.registerAdapter(NoteAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(brightness: Brightness.dark),
          home: const NotesView()),
    );
  }
}
