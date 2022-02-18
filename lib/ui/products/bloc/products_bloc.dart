import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/ui/products/models/product_model.dart';
import 'package:e_commerce_app/ui/products/repositories/products_repository.dart';
import 'package:equatable/equatable.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    required this.repository,
  }) : super(ProductsInitial()) {
    on<ProductEventList>(_onProductEventList);
  }

  final ProductsRepository repository;

  void _onProductEventList(
    ProductEventList event,
    Emitter emit,
  ) {
    // emit(ProductsLoading());
    // final products = await repository.getProductList();
    // emit(ProductsLoaded(products));
    final products = await repository.getProductList();
    emit(ProductsLoaded(products));
  }
}
