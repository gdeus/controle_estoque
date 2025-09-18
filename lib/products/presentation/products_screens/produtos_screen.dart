import 'package:controle_estoque/products/presentation/products_screens/products_controller.dart';
import 'package:flutter/material.dart';

class ProdutosScreen extends StatefulWidget {
  const ProdutosScreen({super.key});

  @override
  State<ProdutosScreen> createState() => _ProdutosScreenState();
}

class _ProdutosScreenState extends State<ProdutosScreen> {
  final controller = ProductsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
        future: controller.getProducts(), 
        builder: (builder, data){
          print(data);
          if(data.hasError){
            return Text(data.error.toString());
          }
          if(data.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(data.connectionState == ConnectionState.done){
            if(data.hasData){
              return ListView.builder(
                itemCount: data.data!.length,
                itemBuilder: (builder, item){
                  return Card(
                    child: Column(
                      children: [
                        Text(data.data![item].id),
                        Text(data.data![item].name),
                        Text(data.data![item].price.toString()),
                        Text(data.data![item].quantity.toString()),
                      ],
                    ),
                  );
                }
              );
            }
          }
          return Container();
        }
      ),
    );
  }
}