import 'package:bloc/bloc.dart';

class SeatsCubit extends Cubit<List<String>> {
  SeatsCubit() : super([]);

  void selectSeat(String id) {
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    print(state);

    emit(List.from(state));
  }

  bool isSelected(String id) {
    // IF SEATS ALREADY CLICK THEN I WILL NOT ADD WITH NEW ONE
    int index = state.indexOf(id);
    print('index : $index');
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
