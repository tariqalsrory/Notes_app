import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon,this.ontap});
  final String text;
  final Icon icon;
 final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          text,
          style:const TextStyle(fontSize: 28, color: Colors.white),
        ),
       const Spacer(),
         CustomIconSearch(icon: icon,ontap: ontap,),
      
      ],
      
    );

  }
}
