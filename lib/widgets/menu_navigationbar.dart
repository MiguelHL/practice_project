import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:product_catalog/providers/ui/navigationbar_provider.dart';
import 'package:provider/provider.dart';

class MenuNavigationBar extends StatelessWidget {
  const MenuNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final navigationProvider= Provider.of<NavigationBarProvider>(context);
    final selectedScreen= navigationProvider.selectedScreen;
    return BottomNavigationBar(

      onTap: (int i){
        navigationProvider.selectedScreen= i;
      },
      currentIndex: selectedScreen,
      items:const[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.layers_sharp),label: 'History'),
    ]);
  }
}