import 'package:flutter/material.dart';
import 'package:product_catalog/providers/products/product_provider.dart';
import 'package:product_catalog/screens/products/products.dart';
import 'package:provider/provider.dart';

class CustomSearchDelegate extends SearchDelegate{

  List<String> searchTerms=['apple','mesas','sillas'];


  @override
  List<Widget>? buildActions(BuildContext context) {
    
    return[
      IconButton(
        onPressed: (){
          query='';
        }, 
        icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
     return IconButton(
      onPressed: (){
        close(context, null);
      }, 
      icon: const Icon(Icons.arrow_back)
     );
  }

  @override
  Widget buildResults(BuildContext context) {
  final productProvider = Provider.of<ProductProvider>(context);

    if(query.trim().isEmpty){
      return const Text('');
    }
    productProvider.getProducts(query);
    return const ProductScreen();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List<String> matchQuery=[];
    // for (var term in searchTerms) {
    //   if(term.toLowerCase().contains(query.toLowerCase())){
    //     matchQuery.add(term);
    //     // searchTerms.add(query.toLowerCase());
    //   }
    // }

    // return ListView.builder(
    //   itemCount: matchQuery.length,
    //   itemBuilder: (context,index){
    //     var result= matchQuery[index];
    //     return ListTile(
    //       title: Text(result),
    //     );
    //   },
    // );
    return Text('');
  }

}