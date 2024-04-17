part of 'coffe_cubit.dart';

@immutable
sealed class CoffeState {}

final class CoffeInitial extends CoffeState {}
final class CoffeRemove extends CoffeState {}
final class CoffeAdd extends CoffeState {}
