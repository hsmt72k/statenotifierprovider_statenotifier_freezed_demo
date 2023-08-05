import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './domain/my_data.dart';

final myDataProvider =
      StateNotifierProvider<MyDataStateNotifier, MyData>((ref) => MyDataStateNotifier());

class MyDataStateNotifier extends StateNotifier<MyData> {
  MyDataStateNotifier() : super(const MyData());

  void changeState(newValue) {
    state = state.copyWith(sliderValue: newValue);
    debugPrint('sliderValue:${state.sliderValue}, hashCode:${state.hashCode}');
  }
}
