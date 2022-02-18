import 'package:e_commerce_app/app/error/failures.dart';
import 'package:e_commerce_app/app/network/network_checker.dart';
import 'package:e_commerce_app/products/data/products_local_data_source.dart';
import 'package:e_commerce_app/products/data/products_remote_data_source.dart';
import 'package:e_commerce_app/products/models/product_model.dart';
import 'package:oxidized/oxidized.dart';

abstract class ProductsRepository {
  Future<Result<List<ProductModel>, Failure>> getProductList();
}

class ProductsRepositoryImpl implements ProductsRepository {
  ProductsRepositoryImpl({
    required this.localDatasource,
    required this.remoteDataSource,
  });

  final ProductsLocalDataSource localDatasource;
  final ProductsRemoteDataSource remoteDataSource;
  final network = NetworkChecker();

  @override
  Future<Result<List<ProductModel>, Failure>> getProductList() async {
    if (await network.checkInternet()) {
      try {
        final remote = await remoteDataSource.getProductList();
        localDatasource.cacheProducts(remote);
        return Right(remote);
      } on BadRequestException {
        return Left(HttpFailure());
      }
    } else {
      try {
        final local = await remoteDataSource.getProductList();
        return Right(local);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
