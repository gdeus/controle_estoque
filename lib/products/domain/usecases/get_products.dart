import 'package:controle_estoque/products/domain/model/product.dart';
import 'package:controle_estoque/products/domain/repositories/i_get_products_repository.dart';

class GetProductsUsecase {
  final IGetProductsRepository repository;

  GetProductsUsecase({required this.repository});

  Future<List<Product>> getProducts() async{
    final response = await repository.getProducts();
    
    if(response.isEmpty){
      throw('Não retornou nenhum produto');
    }
    return response;
  }
}