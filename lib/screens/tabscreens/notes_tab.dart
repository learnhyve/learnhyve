import 'package:flutter/material.dart';
import 'package:learn_hyve/widgets/note_widget.dart';

class NotesTab extends StatelessWidget {
  const NotesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NoteWidget(),
      itemCount: 10,
    );
  }
}
