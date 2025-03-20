import 'package:flutter/material.dart';
import 'package:hivep2/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddNodeButtomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesBudy());
  }
}

class AddNodeButtomSheet extends StatelessWidget {
  const AddNodeButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
