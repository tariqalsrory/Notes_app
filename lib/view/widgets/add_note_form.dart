import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/view/widgets/custom_button_save.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            maxlin: 1,
            onsaved: (value) {
              title = value;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxlin: 6,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNoteSate>(
            builder: (context, state) {
              return CustomButtonSave(
                isloading: state is AddNoteInloading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);

                    BlocProvider.of<AddNoteCubit>(context).addnote(noteModel);
                    setState(() {
                      
                    });
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
