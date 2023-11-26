import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlin = 1, this.onsaved});
  final String hint;
  final int maxlin;

  final void Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'the field is required';
        }
        else{
          return null;
        }
    
      },
      cursorColor: kprimarycolor,
      maxLines: maxlin,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kprimarycolor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kprimarycolor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
