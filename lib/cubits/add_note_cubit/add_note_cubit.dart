import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivep2/constatns.dart';
import 'package:hivep2/cubits/add_note_cubit/add_note_state.dart';
import 'package:hivep2/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(AddNotesInitialState());
  bool isLoading = false;
  addNote(NoteModel note) async {
    //generics
    emit(AddNotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(BoxName);
      await notesBox.add(note);
      emit(AddNoTesSuccessState());
    } catch (error) {
      emit(ADDNotesFailedState(error.toString()));
    }
  }
}
