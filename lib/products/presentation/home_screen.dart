import 'package:controle_estoque/products/presentation/products_screens/produtos_screen.dart';
import 'package:controle_estoque/products/presentation/relatorios_screen.dart';
import 'package:controle_estoque/products/presentation/vendas_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => VendasScreen(),
                ),
              );
            }, 
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
            ),
            child: Text('Fazer Vendas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => ProdutosScreen(),
                ),
              );
            }, 
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
            ),
            child: Text('Produtos', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => RelatoriosScreen(),
                ),
              );
            }, 
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
            ),
            child: Text('Relatórios', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}