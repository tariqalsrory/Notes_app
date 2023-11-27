import 'package:flutter/material.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/view/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  static String id = 'EditNoteView';
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(noteModel: noteModel),
    );
  }
}
