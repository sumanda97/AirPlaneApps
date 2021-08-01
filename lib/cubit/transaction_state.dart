part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionFail extends TransactionState {
  final String error;
  TransactionFail(this.error);
  @override
  List<Object> get props => [error];
}

class TransactionSuccess extends TransactionState {
  final List<TransactionModel> transactions;

  TransactionSuccess(this.transactions);
  @override
  List<Object> get props => [transactions];
}
