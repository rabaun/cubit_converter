import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/model.dart';

part 'user_state.freezed.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState.initial() = _Initial;

  const factory ItemState.loading() = Loading;

  const factory ItemState.data({
    required MyModel? model,
  }) = DataItemState;

  const factory ItemState.error(String message) = _Error;
}
