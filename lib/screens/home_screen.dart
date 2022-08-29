import 'package:flutter/material.dart';
import 'package:product_catalog/providers/ui/navigationbar_provider.dart';
import 'package:product_catalog/screens/products/products.dart';
import 'package:product_catalog/widgets/menu_navigationbar.dart';
import 'package:product_catalog/widgets/search_delegate.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.white,
        actions: [
         
          IconButton(
            onPressed: (){
               showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
               );
            }, 
            icon: const Icon(Icons.search),
           
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.person)
          ),
        ],
        // backgroundColor: Colors.red,
      ),
      bottomNavigationBar: const MenuNavigationBar(),
      body: _HomePageBody(),
    );
  }

}

class _HomePageBody extends StatelessWidget {

  
    @override
    Widget build(BuildContext context) {
      
      final navigationProvider= Provider.of<NavigationBarProvider>(context);
      
      switch (navigationProvider.selectedScreen) {
        case 0:
          return const ProductScreen();
        case 1:
          return const HistoryScreen();
        default:
        return const Text('ccc');
      }
    }
  }