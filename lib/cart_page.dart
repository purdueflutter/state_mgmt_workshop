import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mgmt_workshop/cart_bloc/cart_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.cartItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.shopify),
              title: Text(state.cartItems[index].name),
            );
          },
        );
      },
    );
  }
}
