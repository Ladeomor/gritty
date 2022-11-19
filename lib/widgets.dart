import 'package:flutter/material.dart';
import 'package:gritty/text.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFFE8DDF2),
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Center(
      child:Column(
        children: [
          AppItalicsText(text: 'Transcribing...', fontStyle: FontStyle.italic,color: Color(0xFF393939),weight: FontWeight.w300,),
          AppText(text: 'I was doing very good although..', color: Color(0xFF393939),weight: FontWeight.w300,),


        ],
      ),
      ),
    );
  }
}
