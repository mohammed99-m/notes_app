import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivep2/constatns.dart';
import 'package:hivep2/cubits/notes_cubit/notes_states.dart';
import 'package:hivep2/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitialState());

  fechAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(BoxName);
      emit(NotesSuccessState(notes:notesBox.values.toList()));
    } catch (error) {
      emit(NotesFailedState(errormessage:error.toString()));
    }
  }
}
