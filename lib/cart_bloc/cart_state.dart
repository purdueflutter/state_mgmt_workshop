part of 'cart_bloc.dart';

@immutable
class CartState {
  final List<Item> cartItems;

  const CartState(this.cartItems);
}
