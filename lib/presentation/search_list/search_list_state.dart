import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/photo.dart';

part 'search_list_state.freezed.dart';
part 'search_list_state.g.dart';

@freezed
class SearchListState with _$SearchListState {
  const factory SearchListState({
    @Default([]) List<Photo> photos,
    @Default(false) bool isLoading,
  }) = _SearchListState;



  factory SearchListState.fromJson(Map<String, dynamic> json) =>
      _$SearchListStateFromJson(json);
}