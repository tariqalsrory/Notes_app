import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_button_save.dart';
import 'package:notes_app/view/widgets/custom_textfield.dart';

class AddButtonModelSheet extends StatelessWidget {
  const AddButtonModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
              maxlin: 1,
            ),
            SizedBox(
              height: 16,
              
            ),
            CustomTextField(
              hint: 'Content',
              maxlin: 6,
            ),
             SizedBox(height: 16,)      ,
            CustomButtonSave(),
           SizedBox(height: 16,)      ,

             
           ],
        ),
      ),
    );
  }
}


