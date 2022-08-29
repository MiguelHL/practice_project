import 'package:flutter/material.dart';
import 'package:product_catalog/providers/products/product_provider.dart';
import 'package:product_catalog/screens/products/widgets/product_card.dart';
import 'package:provider/provider.dart';


class ProductTable extends StatelessWidget {
  const ProductTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<ProductProvider>(context);
    final products= productProvider.products;
    return Table(
      children:[for (int i=0;i<products.length;i=i+2)
          TableRow(
          children:[
            ProductCard(title: products[i]['title'],price: products[i]['price'].round(),thumbnail: products[i]['thumbnail']),
            ProductCard(title: products[i+1]['title'],price: products[i+1]['price'].round(),thumbnail: products[i+1]['thumbnail']),
          ] 
            
          ),
      ],
    );
  }

 
}