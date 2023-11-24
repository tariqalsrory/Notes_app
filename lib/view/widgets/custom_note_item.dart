
import 'package:flutter/material.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
              borderRadius: BorderRadius.circular(16), color:const Color.fromRGBO(188, 190, 83, 0.962)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Flutter Tips',
                style: TextStyle(color: Colors.black,fontSize: 26),),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top:16.0,bottom: 16),
                  child: Text('build your carear with Tariq Alsrory',
                  style: TextStyle(color: Colors.black.withOpacity(0.8),
                  fontSize: 18),),
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon( Icons.delete, color: Colors.black,
                    size: 28,),),
              ),
               Text('May21, 2023',
              
              style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 16) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FontAwesomeIcons {
}
