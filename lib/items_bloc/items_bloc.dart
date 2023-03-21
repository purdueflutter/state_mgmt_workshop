import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_mgmt_workshop/item_model.dart';
import 'package:state_mgmt_workshop/items_dataprovider.dart';

part 'items_event.dart';
part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final ItemsDataProvider db;

  ItemsBloc(this.db) : super(ItemsState(db.getItems())) {
    on<ItemAddEvent>((event, emit) {
      db.addItem(event.item);
      emit(ItemsState(db.getItems()));
    });
  }
}
