part of 'destinations_cubit.dart';

abstract class DestinationsState extends Equatable {
  const DestinationsState();

  @override
  List<Object> get props => [];
}

class DestinationsInitial extends DestinationsState {}

class DestinationLoading extends DestinationsState {}

class DestiantionSuccess extends DestinationsState {
  final List<DestinationModel> destinations;

  DestiantionSuccess(this.destinations);
  @override
  List<Object> get props => [destinations];
}

class DestinationFail extends DestinationsState {
  final String error;
  DestinationFail(this.error);

  @override
  List<Object> get props => [error];
}
