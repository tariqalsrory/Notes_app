import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_cubits/cubit/note_cubit.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/view/widgets/custom_note_item.dart';

class ListViewIteM extends StatelessWidget {
  const ListViewIteM({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteCubitSate>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListView.builder(
            itemCount:notes.length,
            
            padding: EdgeInsets.zero,
            
            itemBuilder: (context, index) {
              return   NoteItem(noteModel: notes[index],);
            },
          ),
        );
      },
    );
  }
}
