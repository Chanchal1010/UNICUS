import 'package:flutter/material.dart';

import 'package:speech_to_text/speech_to_text.dart' as stt;

class voice extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<voice> {
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = '';
  @override
  void initState() {
    super.initState();
    _initializeSpeech();
  }

  void _initializeSpeech() async {
    bool available = await _speech.initialize(
      onStatus: (status) => print('onStatus: $status'),
      onError: (error) => print('onError: $error'),
    );
    if (available) {
      setState(() {
        _isListening = true;
      });
    }
  }

  void _startListening() {
    _speech.listen(
      onResult: (result) => setState(() {
        _text = result.recognizedWords;
      }),
    );
  }

  void _stopListening() {
    _speech.stop();
    setState(() {
      _isListening = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Voice-to-Text Converter"),),
        backgroundColor:Color.fromARGB(255, 105, 4, 88)
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_text',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 40.0),
              FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 105, 4, 88),
                onPressed: _isListening ? _stopListening : _startListening,
                child: Icon(_isListening ? Icons.stop : Icons.mic,size: 35.0, color: Color.fromARGB(255, 246, 239, 245),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
