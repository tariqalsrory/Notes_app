import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/list_view_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
         const SizedBox(
            height: 32,
          ),

           CustomAppBar(text: 'Notes',icon:const Icon(Icons.search),ontap: (){},),
         
         const Expanded(child: ListViewIteM())
        ],
      ),
    );
  }
}
