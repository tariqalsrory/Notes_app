
import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key, required this.icon, this.onPressed});
 final Icon icon;
 final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed ,
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white.withOpacity(0.1)),
          child:  Center(
              child: icon
          )),
    );
  }
}
