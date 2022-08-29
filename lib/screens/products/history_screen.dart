import 'package:flutter/material.dart';
import 'package:product_catalog/providers/products/product_provider.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context); 
    final history = productProvider.history;

    return ListView.builder(
      itemCount: productProvider.history.length,
      itemBuilder: (BuildContext context,int index){
      return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.only(top: 15),
          child: ListTile(
                    onTap: (){},
                    title: Text(history[index].title),
                    // textColor: Colors.red,
                    leading: CircleAvatar(
                           radius: 25,
                           backgroundColor: Colors.white,
                           backgroundImage: NetworkImage(history[index].thumbnail),
                           //backgroundImage: AssetImage('assets/profile_picture_before.jpg')
                         ),
                ),
        ),
      );

    });
  }
}