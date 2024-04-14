import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_cubit_project/cubit/user_state.dart';
import '../data/domain/use_cases/impl/api_case_impl.dart';
import '../data/models/model.dart';
import '../data/repositories/api_repo_impl.dart';
import '../main.dart';

class ItemCubit extends Cubit<ItemState> {
  String? currency;
  MyModel? tasksList;
  late ApiRepositoryImpl _apiRepository;

  ItemCubit(this.currency) : super(const ItemState.loading()) {
    addItem(currency);
  }

  Future<void> addItem(String? currency) async {
    try {
      _apiRepository = getIt.get<ApiRepositoryImpl>();
      tasksList = await _apiRepository.getCurrency(currency);
      emit(ItemState.data(model: tasksList));
    } catch (error) {
      emit(ItemState.error(error.toString()));
    }
  }

  void updateCurrency(String newCurrency) {
    currency = newCurrency;
    addItem(newCurrency);
  }
}
