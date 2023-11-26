import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notes_app/view/widgets/add_note_form.dart';

class AddButtonModelSheet extends StatelessWidget {
  const AddButtonModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding:  EdgeInsets.only(left: 16,right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom
        ),
        
        child: BlocConsumer<AddNoteCubit, AddNoteSate>(
          listener: (context, state) {
            if (state is AddNoteFailur) {
              print('fialur ${state.messageError}');
            } else if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const SingleChildScrollView(child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
