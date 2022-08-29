import 'package:flutter/material.dart';
import 'package:product_catalog/providers/products/product_provider.dart';
import 'package:product_catalog/screens/products/widgets/product_table.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {


  const ProductScreen({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.all(15),
              width: 400,
              child: const Text('Recent Searches', style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold))
            ),

            // const ProductScreen()
              const ProductTable()
              // ShowProduct()
          ],
          ),
  
    );
  }
}