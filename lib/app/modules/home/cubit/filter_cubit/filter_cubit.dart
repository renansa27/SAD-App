import 'package:sad_app/app/modules/home/cubit/filter_cubit/filter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterState.init());

  //Filter
  void updateFilterValue({required String? value}) {
    /* emit(FilterLoaded(
      filterValue: value,
    )); */
    emit(state.copyWith(filterValue: value));
  }
}
