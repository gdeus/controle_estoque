import 'package:controle_estoque/products/domain/model/product.dart';
import 'package:controle_estoque/products/domain/usecases/get_products.dart';
import 'package:controle_estoque/products/external/get_products_mock_datasource.dart';

class ProductsController {
  final GetProductsUsecase usecase = GetProductsUsecase(repository: GetProductsMockDatasource());

  Future<List<Product>> getProducts() async{
    return await usecase.getProducts();
  }
}