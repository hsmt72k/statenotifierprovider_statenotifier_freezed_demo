import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_data.freezed.dart';

@freezed
class MyData with _$MyData {
  const factory MyData({@Default(0.5) double sliderValue}) = _MyData;
}
