import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivep2/constatns.dart';
import 'package:hivep2/cubits/notes_cubit/notes_states.dart';
import 'package:hivep2/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitialState());
  List<NoteModel>? notes;
  fechAllNotes() {
    var notesBox = Hive.box<NoteModel>(BoxName);
    notes = notesBox.values.toList();
  }
}
