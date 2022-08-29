import 'package:flutter/material.dart';
import 'package:product_catalog/providers/products/product_provider.dart';
import 'package:product_catalog/screens/products/product_details.dart';
import 'package:provider/provider.dart';


class ProductCard extends StatelessWidget {

  final String title;
  final int price;
  final String thumbnail;

  const ProductCard({ Key? key, required  this.title, required this.price, required this.thumbnail }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final productProvider = Provider.of<ProductProvider>(context); 
    return GestureDetector(
      onTap: (){
         productProvider.setHistory(title,price,thumbnail);
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductDetails()),
            );
      },
      child: Container(
          height: 180,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blueGrey)
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
               Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red
                  
                ),
                child: ClipRRect(
                  child: Image(image: NetworkImage(thumbnail==''?'https://www.quicideportes.com/assets/images/custom/no-image.png':thumbnail,scale: 0.5)),
                  borderRadius: const BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15)),
                  )
               ),
              
              Container(
                // color: Colors.red,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10,top: 10),
                height:30,
                child:  Text(title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
              ),
              Row(
                children:  [
                  Container(
                    width: 120,
                    height: 30,
                    padding: const EdgeInsets.only(left: 10,top: 5),
                    decoration: const BoxDecoration(
                      //  color: Colors.orange,
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                    ),
                   
                    child: Text('$price \$us',style: const TextStyle(fontSize: 14))
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 0),
                    
                    margin: const EdgeInsets.only(left: 25),
                    height: 30,
                     decoration: const BoxDecoration(
                      //  color: Colors.green,
                       borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                    ),
                    child: const Icon(Icons.save_rounded,color: Colors.blue,)
                  )
                ],
              )
            ],
          ),
    
      ),
    );
  }
}