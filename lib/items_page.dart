import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mgmt_workshop/cart_bloc/cart_bloc.dart';

import 'items_bloc/items_bloc.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.shopify_outlined),
              title: Text(state.items[index].name),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  BlocProvider.of<CartBloc>(context)
                      .add(CartItemAddEvent(state.items[index]));
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Added to cart!')));
                },
              ),
            );
          },
        );
      },
    );
  }
}
