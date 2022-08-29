import 'package:flutter/material.dart';
import 'package:product_catalog/providers/products/product_provider.dart';
import 'package:product_catalog/providers/ui/navigationbar_provider.dart';
import 'package:product_catalog/screens/home_screen.dart';
import 'package:product_catalog/screens/products/product_details.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const AppState());
}
 class AppState extends StatelessWidget {
   const AppState({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(_)=>NavigationBarProvider()),
        ChangeNotifierProvider(create:(_)=>ProductProvider())


      ],
      child:  const MyApp(),
     );
   }
 }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Patio Delivery',
      initialRoute: 'Home',
      routes: {
        'Home': (_)=> const HomeScreen(),
        'DetailProduct':(_)=> const ProductDetails()
      },
      // theme: ThemeData.light(),
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
        fontFamily: 'Schyler',
        appBarTheme:const AppBarTheme(
          foregroundColor: Colors.black,
          
        ),

      ),
    );
  }
}
