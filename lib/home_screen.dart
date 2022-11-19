import 'package:flutter/material.dart';
import 'package:gritty/conversation_screen.dart';
import 'package:gritty/navigator.dart';
import 'package:gritty/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
          padding: const EdgeInsets.only(left:10, right:10, top:50),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Row(
                    children: [
                      AppText(text: 'Hello'),
                      const SizedBox(width: 5),
                      AppLargeText(text: 'Riri,',size:20)
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xFF8C54BF),
                    radius: 24,
                    child: AppText(text: 'RO',size: 18,color: Colors.white,),
                  )

                ]
              ),
              Image.asset('assets/images/chirpy bob.png'),
              const SizedBox(height: 10,),

              AppText(text: 'What would you like to say today?', size: 20,),
              const SizedBox(height: 100,),
              InkWell(
                onTap: (){
                  navigatePush(context, const ConversationScreen());
                },
                  child: Image.asset('assets/images/mic.png')),
              AppText(text: 'Tap the Microphone to begin', size: 12,),


            ],
          ),
        ),

      ),
    );
  }
}