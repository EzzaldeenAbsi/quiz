import 'package:flutter/cupertino.dart';

class Solary with ChangeNotifier{
  int solary=0;
  chingSolary(){
    solary=solary+100;
    notifyListeners();
  }
}