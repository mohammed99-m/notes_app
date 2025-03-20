import 'package:flutter/material.dart';

import '../widget/edit_view_boddy.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNodeViewBody(),
    );
  }
}
