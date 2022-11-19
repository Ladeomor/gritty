import 'package:flutter/material.dart';
import 'package:gritty/text.dart';
import 'package:gritty/widgets.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/images/Grit Grammar 2.png'),
        toolbarHeight: 32,
        actions: [

          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xFF5D387F),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset('assets/images/global.png')

          ),
          const SizedBox(width: 5,),
          Row(
            children: [
              AppText(text: 'En', size:12),
              const Icon(Icons.expand_more_outlined, color:Colors.black),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:10, right:10, top:30),

          child: Column(
            children: [

              AppText(text: 'What would you like to say today?', size: 20,),
                const SizedBox(height: 8),
              AppText(text: 'Each conversation bring you closer to fluency.', size: 14,weight: FontWeight.w400,),
              const SizedBox(height: 50,),
              Image.asset('assets/images/anim_mic.png'),
              const SizedBox(height:50),
              AppText(text: '00:12',size: 20,color: const Color(0xFF393939),),
              const SizedBox(height:20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/delete.png'),
                  Image.asset('assets/images/pause.png'),
                  Image.asset('assets/images/send.png'),

                ],
              ),
              const SizedBox(height: 40),
              const TextContainer(),


            ],
          ),
        ),
      ),
    );
  }
}
