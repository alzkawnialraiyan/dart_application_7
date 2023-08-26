import 'dart:io';
void main(){
  Map question1 = {"question":"The Earth is round.", "answer":"True"};
  Map question2 = {"question":"Human's body is 85% water.", "answer":"False"};
  Map question3 = {"question":"We are in year 2023.", "answer":"True"};
  Map question4 = {"question":"Muscat is the capital city of Oman.", "answer":"True"};
  Map question5 = {"question":"The Atlantic Ocean is the biggest ocean on Earth.","answer":"False"};
  Map question6 = {"question":"Bats are blind","answer":"False"};
  Map question7 = {"question":"The blue whale is the biggest animal to have ever lived.","answer":"True"};
  Map question8 = {"question":"The black box in a plane is black","answer":"True"};

  List <Map> quiz = [question1, question2, question3,question4,question5,question6,question7,question8];

  print("\nPlease answer the questions with True/False");
  print("Each question is 2 marks, total marks 16\n");
  int count = 0;
  for (var q in quiz) {
    print(q["question"]);
    String answer = stdin.readLineSync()??"";
    if (answer == q["answer"]) {
      print("Correct answer");
      count += 2;
    }else{
      print("Wrong answer");
    }
  }
  print("Your final score is $count");
}