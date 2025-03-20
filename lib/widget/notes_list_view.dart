import 'package:flutter/material.dart';
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
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: NoteItem(colorData:colors[index%4],),
        );
      },
    );
  }
}
