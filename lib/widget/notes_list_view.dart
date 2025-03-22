import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/notes_cubit/notes_cubit.dart';
import 'package:hivep2/cubits/notes_cubit/notes_states.dart';
import 'package:hivep2/models/note_model.dart';
import 'package:hivep2/widget/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  final colors = const [
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(builder: (context, state) {
      List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
      print(notes.length);
      return Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: NoteItem(
                noteModel: notes[index],
                colorData: colors[index % 4],
              ),
            );
          },
        ),
      );
    });
  }
}
