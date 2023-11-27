import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_cubits/cubit/note_cubit.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/list_view_item.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
         const SizedBox(
            height: 32,
          ),

           CustomAppBar(text: 'Notes',icon:const Icon(Icons.search),onPressed: (){},),
         
         const Expanded(child: ListViewIteM())
        ],
      ),
    );
  }
}
