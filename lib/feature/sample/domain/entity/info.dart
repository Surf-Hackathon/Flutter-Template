import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';

@freezed
class Info with _$Info {
  const factory Info({
    String? name,
  }) = _Info;
}
