class QuizeModel {
  String question;
  List<String> options;
  String answer;

  QuizeModel(
      {required this.question, required this.options, required this.answer});
}

List<QuizeModel> list = [
  QuizeModel(
    question: 'Which operator has the highest precedence?',
    options: ['()', '=', '++', '=='],
    answer: '()',
  ),
  QuizeModel(
    question: 'What the output?\nint a=(!7==!5+2)?4:3;',
    options: ['4', '2', '3', '5'],
    answer: '3',
  ),
  QuizeModel(
    question:
        'The following code will display? \nint a=5,b=6,c=a<b?a:b;\nprint(c);',
    options: ['6', '0', '5', '1'],
    answer: '5',
  ),
  QuizeModel(
    question:
        'The following code will display? \nint a=5,b=3,c=(a/b)+(a%b);\nprint(c);',
    options: ['2', '3', '5', '1'],
    answer: '3',
  ),
];
