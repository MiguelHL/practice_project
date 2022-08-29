import 'package:flutter/material.dart';

class NavigationBarProvider extends ChangeNotifier{

  int _selectedScreen=0;

  int get selectedScreen{
    return _selectedScreen;
  }

  set selectedScreen(int numPage){
    _selectedScreen=numPage;
    notifyListeners();
  }

}