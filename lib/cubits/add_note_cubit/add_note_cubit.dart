import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/add_note_cubit/add_note_state.dart';

class NotesCubit extends Cubit<AddNotesStates> {
  NotesCubit() : super(AddNotesInitialState());
}
