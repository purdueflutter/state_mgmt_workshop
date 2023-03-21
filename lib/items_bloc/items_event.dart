part of 'items_bloc.dart';

@immutable
abstract class ItemsEvent {}

class ItemAddEvent extends ItemsEvent {
  final Item item;

  ItemAddEvent(this.item);
}
