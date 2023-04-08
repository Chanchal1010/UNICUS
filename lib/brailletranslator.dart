import 'package:flutter/material.dart';

class BrailleTranslator extends StatefulWidget {
  @override
  _BrailleTranslatorState createState() => _BrailleTranslatorState();
}


class _BrailleTranslatorState extends State<BrailleTranslator> {
  final TextEditingController _textEditingController = TextEditingController();
  String _brailleText = '';

  Map<String, String> _brailleMap = {
    'a': '⠁',
    'b': '⠃',
    'c': '⠉',
    'd': '⠙',
    'e': '⠑',
    'f': '⠋',
    'g': '⠛',
    'h': '⠓',
    'i': '⠊',
    'j': '⠚',
    'k': '⠅',
    'l': '⠇',
    'm': '⠍',
    'n': '⠝',
    'o': '⠕',
    'p': '⠏',
    'q': '⠟',
    'r': '⠗',
    's': '⠎',
    't': '⠞',
    'u': '⠥',
    'v': '⠧',
    'w': '⠺',
    'x': '⠭',
    'y': '⠽',
    'z': '⠵',
    '1': '⠁⠃',
    '2': '⠁⠉',
    '3': '⠁⠙',
    '4': '⠁⠑',
    '5': '⠅⠉',
    '6': '⠛⠑',
    '7': '⠛⠓',
    '8': '⠛⠙',
    '9': '⠛⠍',
    '0': '⠚⠚',
    ' ': ' ',
  };

  void _convertToBraille(String text) {
    String brailleText = '';
    for (int i = 0; i < text.length; i++) {
      String char = text[i].toLowerCase();
      if (_brailleMap.containsKey(char)) {
        brailleText += _brailleMap[char]!;
      } else {
        brailleText += char;
      }
    }
    setState(() {
      _brailleText = brailleText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Braille Translator'),
            backgroundColor:Color.fromARGB(255, 105, 4, 88),
          ),
          body: Padding(
            padding: EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Enter text to convert',
                  ),
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    String text = _textEditingController.text;
                    _convertToBraille(text);
                  },
                   style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 105, 4, 88), 
    elevation: 3.0, 
    shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
                  child: Text('Convert'),

                ),
                SizedBox(height: 40.0),
                Text(
                  _brailleText,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),)
    );
  }
}


