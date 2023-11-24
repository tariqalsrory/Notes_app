
import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_note_item.dart';

class ListViewIteM extends StatelessWidget {
  const ListViewIteM({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:14),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder:(context,index){
          return const NoteItem();
        },
      ),
    );
  }
}