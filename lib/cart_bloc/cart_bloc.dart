import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../item_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState([])) {
    on<CartItemAddEvent>((event, emit) {
      final items = [...state.cartItems, event.item];
      emit(CartState(items));
    });
  }
}
