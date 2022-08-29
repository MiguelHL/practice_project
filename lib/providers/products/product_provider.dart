import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:product_catalog/models/product_model.dart';

class ProductProvider extends ChangeNotifier{

  final String _baseUrl='api.mercadolibre.com';
  List<dynamic> products=[];
  List<Product> history=[];

  ProductProvider(){
    getProducts('tenis');
  
  }

  getProducts(String searchTerm)async{

    final url= Uri.https(_baseUrl,'sites/MLU/search',{
        'q':searchTerm,
        'limit':'10'
    });

    final response= await http.get(url);
    final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    products= jsonResponse['results'];
    notifyListeners();

  }

  setHistory(String title,int price, String thumbnail){

    final item=  Product(title:title,price:price,thumbnail:thumbnail);
    bool validate=history.any((product) => product.title == item.title);
    if(!validate && history.length<5){
       history.add(item);
      notifyListeners();
    }
   
   

  }


}