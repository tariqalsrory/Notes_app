
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButtonSave extends StatelessWidget {
  const CustomButtonSave({super.key});


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
        color: kprimarycolor
        ,
        borderRadius: BorderRadius.circular(8)
      ),
      child:const Center(
        child:  Text('Save',
        style:TextStyle( 
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}