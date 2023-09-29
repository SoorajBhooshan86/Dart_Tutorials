import 'package:characters/characters.dart';
void numberExamples(){

  int id = 1;
  double value = 2.0;

  print('int id :- $id');
  print('double value :- $value');

  num n = id;

  print('num n :- $n');
  n = value;
  print('num n :- $n');
  print('num can be both double and int');


  print('---------------------');

}



void stringExamples(){
  //? r is for raw string
   var s = r'In a raw string, not even \n gets special treatment.';
  print(s);

  var s1 = '''
You can create
multi-line strings like this one.
''';

print(s1);

  print('---------------------');
}

void something(){
  // check when you have time
  //Runes and grapheme clusters 
  // Symbols


  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}');
  print('---------------------');
}