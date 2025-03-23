import 'package:flutter/material.dart';
import 'package:hivep2/models/note_model.dart';

import '../widget/edit_view_boddy.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key , required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNodeViewBody(note:note,),
    );
  }
}
