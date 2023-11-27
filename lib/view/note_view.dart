import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_cubits/cubit/note_cubit.dart';
import 'package:notes_app/view/widgets/add_buttom_model_sheet.dart';
import 'package:notes_app/view/widgets/custom_note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'NoteView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddButtonModelSheet();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ));
          },
          child: const Icon(Icons.add),
        ),
        body: const NoteViewBody(),
      ),
    );
  }
}
