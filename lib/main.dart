import 'package:flutter/material.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:notes_app/view/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NoteView.id:(context) => const NoteView(),
        EditNoteView.id:(context)=> const EditNoteView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      initialRoute:  NoteView.id,
    );
  }
}
