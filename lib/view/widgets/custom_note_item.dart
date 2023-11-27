import 'package:flutter/material.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/view/edit_note_view.dart';



class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel, });
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:5),
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color:Color(noteModel.color)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title:  Text(noteModel.title,
                style:const TextStyle(color: Colors.black,fontSize: 26),),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top:16.0,bottom: 16),
                  child: Text(noteModel.subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(0.8),
                  fontSize: 18),),
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon( Icons.delete, color: Colors.black,
                    size: 28,),),
              ),
               Text(noteModel.date,
              
              style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}