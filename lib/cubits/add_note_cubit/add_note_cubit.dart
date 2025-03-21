import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/add_note_cubit/add_note_state.dart';
import 'package:hivep2/models/note_model.dart';

class NotesCubit extends Cubit<AddNotesStates> {
  NotesCubit() : super(AddNotesInitialState());


  addNote(NoteModel){
    
  }
}
