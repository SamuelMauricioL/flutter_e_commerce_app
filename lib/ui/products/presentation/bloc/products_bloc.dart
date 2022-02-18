import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/ui/products/data/models/product_model.dart';
import 'package:e_commerce_app/ui/products/data/repositories/products_repository.dart';
import 'package:equatable/equatable.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    required this.repository,
  }) : super(ProductsInitial()) {
    on<ProductEventListCalled>(_onProductEventList);
  }

  final ProductsRepository repository;

  Future<void> _onProductEventList(
    ProductEventListCalled event,
    Emitter emit,
  ) async {
    emit(ProductsLoading());
    final products = await repository.getProductList();
    products.when(
      ok: (list) {
        emit(ProductsLoaded(products: list));
      },
      err: (error) {
        emit(
          const ProductsError(
            message: 'Ocurrio un error al traer los productos',
          ),
        );
      },
    );
  }
}
