import 'package:controle_estoque/products/domain/model/product.dart';
import 'package:controle_estoque/products/domain/repositories/i_get_products_repository.dart';
import 'package:controle_estoque/utils/db_fake.dart';

class GetProductsMockDatasource implements IGetProductsRepository{
  @override
  Future<List<Product>> getProducts() async{
    await Future.delayed(Duration(seconds: 4));
    return listProductsDBFake;
  }
}