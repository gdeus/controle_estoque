import 'package:controle_estoque/products/domain/model/product.dart';

abstract class IGetProductsRepository{
  Future<List<Product>> getProducts();
}