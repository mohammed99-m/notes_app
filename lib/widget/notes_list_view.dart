import 'package:flutter/material.dart';
import 'package:hivep2/widget/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: NoteItem(),
        );
      },
    );
  }
}
