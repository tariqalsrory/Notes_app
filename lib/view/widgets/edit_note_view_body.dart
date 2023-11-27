import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notes_app/add_cubits/cubit/note_cubit.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/view/widgets/color_list_view.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: const Icon(Icons.done),
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subtitle = content ?? widget.noteModel.subtitle;
              widget.noteModel.color = BlocProvider.of<AddNoteCubit>(context).color.value;
              widget.noteModel.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: widget.noteModel.title,
            maxlin: 1,
            onchange: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: widget.noteModel.subtitle,
            maxlin: 5,
            onchange: (data) {
              content = data;
            },

          ),

                    const ColorsList(),

        ],
      ),
    );
  }
}
