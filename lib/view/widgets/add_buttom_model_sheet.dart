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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
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
            onsaved: (value){
              title=value;
               setState(() {
              
            });
            },
           
          ),
         const SizedBox(
            height: 16,
            
          ),
          CustomTextField(
            hint: 'Content',
            maxlin: 6,
            onsaved: (value){
              subtitle=value;
          
            },
            
          ),
         const  SizedBox(height: 16,)      ,
          CustomButtonSave(
          ontap: (){
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();
            }else{
              autovalidateMode =AutovalidateMode.always;
       
          }
          },
         ),
        const SizedBox(height: 16,)      ,
    
           
         ],
      ),
    );
  }
}


