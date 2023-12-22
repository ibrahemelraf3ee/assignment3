import 'dart:io';

import 'package:test/expect.dart';

void main()
{
  task1();
  task2();
  task3();
  task4();
  task5();
  task6();
  task7();
  task8();
  task9();
  task10();
}

task1()
{
List<String> animalname =["Loin","Dog","Cat","Cow"];
//animalname.forEach((element) {print(animalname);});
for(String element in animalname){
  print(element);
}
}


task2()
{
  List<String> moiveList =["AlaaEldein","tangled","A Hero never Die","The Road To El Dorado",
                           "Demon salyer","atlantis"];
  List<String> moiveListToPrint =[];
  for(String element in moiveList)
  {
    if(element.toLowerCase().startsWith("a")){
      moiveListToPrint.add(element);// يتم اضافة هناtoLowerCase() لكي يتم طباعة الحروف صغيرة
    }
  }
  print(moiveListToPrint);
}


 task3()
{
  print("this program is  to check User name and password");
  int wrongAttempts = 3;
for(int i = 1; i <=3; i++)
{
  print("please enter your User name");
  String userName = stdin.readLineSync()!;
  print("please enter your PassWord");
  String passWord = stdin.readLineSync()!;


  if(userName.endsWith("@gmail.com")&& passWord.length >=7){
    print("Success");
    break;
  }
  else
  {
    if(i >= wrongAttempts )
    {
      print("the password must be at least 6 letters or numbers OR the User Name does NOT contain:@gmail.com");
    }
    if(i < wrongAttempts ){
      print("you have reached the maximum login attempts please  Rerun the program try again later");
    }
  }

}


}


task4()
{
  {
    print("Enter the starting number");
    int startingNumber = int.tryParse(stdin.readLineSync()!)??0;
    print("Enter the Ending number");
    int endingNumber = int.tryParse(stdin.readLineSync()!)??0;

    for(;startingNumber <= endingNumber;startingNumber++)
    {
      //print("$startingNumber is${startingNumber.isEven?"Even":"odd"}");     Single Line IF  that if you want to get odd and even at the same time
      if (startingNumber.isEven) {
        print("$startingNumber is Even");
      } else {
        print("$startingNumber is Odd");
      }
    }
    for(;startingNumber <= endingNumber;startingNumber++)
    {
      if (startingNumber.isOdd) {
        print("$startingNumber is Odd");
      } else {
        print("$startingNumber is Even");
      }
    }
  }
}

task5()
{
List<String> word =["Bat man","Batata","Orange","Apple","Bear","Coconut"];
List<String> reuslt =[];
print("Enter the Word");
String input = stdin.readLineSync()!;

for(int i = 0 ; i <word.length ; i++)
{
  if(word[i].startsWith(input))
  {
    reuslt.add(word[i]);
  }
}
print(reuslt);
}

task6()
{
  print("Enter the sentance");
  String sentance = stdin.readLineSync()!;
  List<String> result = sentance.split(",");
  print(result);
}

task7()
{
// this task was canceled
// this task was canceled
}

task8(){
  int numberOfWords = 10;
  String word;
  List<String> listofwords =[];
  String bigWord;
  for(int i = 0;  i < numberOfWords; i++){
    {
      print("enter word number$i");
      word = stdin.readLineSync()!;
      listofwords.add(word);
    }
  }
  bigWord =listofwords.join();
  print(bigWord);
}


task9(){
List<String> listOfNames =["ibrahem","Na","aya","Na","mohamed","Na","sarah","Na","ahmed","Na"];
for(int i = 0;i < listOfNames.length;i+=2)
{
  print(listOfNames[i]);
}
}


task10(){
print("enter a name to add to list of name's and type 'end' to end the program");
List<String> listOfNames = [];
while(true)
{
  String name = stdin.readLineSync()!;
  if(name =="end")
  {
    print("Here is the Full list of name's $listOfNames");
    break;
  }else
  {
    listOfNames.add(name);
    print(listOfNames);
  }
}

}