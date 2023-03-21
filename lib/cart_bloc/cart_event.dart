part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartItemAddEvent extends CartEvent {
  final Item item;

  CartItemAddEvent(this.item);
}
