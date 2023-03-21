import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mgmt_workshop/items_bloc/items_bloc.dart';
import 'package:state_mgmt_workshop/items_dataprovider.dart';

import 'cart_bloc/cart_bloc.dart';
import 'home_page.dart';
import 'item_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ItemsDataProvider()
        ..addItem(Item("Item 1"))
        ..addItem(Item("Item 2"))
        ..addItem(Item("Item 3")),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ItemsBloc(
              RepositoryProvider.of<ItemsDataProvider>(context),
            ),
          ),
          BlocProvider(
            create: (context) => CartBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Shopping App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ),
      ),
    );
  }
}
