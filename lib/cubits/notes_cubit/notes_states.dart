import '../../models/note_model.dart';

abstract class NotesStates {}

class NotesInitialState extends NotesStates {}

class NotesLoadingState extends NotesStates {}

class NotesSuccessState extends NotesStates {
  final List<NoteModel> notes;
  NotesSuccessState({required this.notes});
}

class NotesFailedState extends NotesStates {
  final String errormessage;
  NotesFailedState({required this.errormessage});
}
