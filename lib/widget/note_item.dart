import 'package:flutter/material.dart';
import 'package:hivep2/models/note_model.dart';

import '../views/edit_node_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.colorData, required this.noteModel});
  final Color colorData;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        // height: 200,
        // width: double.infinity,
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: colorData,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(noteModel.subtitle,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.6))),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  // it extends hive already
                  noteModel.delete();
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                noteModel.date,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
