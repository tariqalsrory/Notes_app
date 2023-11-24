import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: ListView(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomAppBar(
              text: 'Edit Note',
              icon:const Icon(Icons.done),
              ontap: () {},
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hint: 'Title',
              maxlin: 1,
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hint: 'content',
              maxlin: 5,
            ),
          ],
        ),
      ),
    );
  }
}
