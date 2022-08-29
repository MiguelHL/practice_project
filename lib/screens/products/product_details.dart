import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
             Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back)
          ),
        backgroundColor: Colors.white,
      ),
      body: const Center(child: Text('DetailProduct')),
    );
  }
}