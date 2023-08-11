import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextSpeech extends StatefulWidget {
  const TextSpeech({super.key});

  @override
  State<TextSpeech> createState() => _TextSpeechState();
}

class _TextSpeechState extends State<TextSpeech> {
  final FlutterTts tts = FlutterTts();
  final TextEditingController _controller = TextEditingController(text: 'hello world');
  TextSpeech() async{
   await tts.setLanguage("it-IT");
   await tts.setPitch(0.1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: TextField(
                controller: _controller,
              ),
            ),
            const SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              TextSpeech();
              tts.speak(_controller.text);
              tts.setVoice("en-us-x-sfg#female_1-local" as Map<String, String>);
            }, child: const Text('Speak'))
          ],
        ),
      ),
    );
  }
}
