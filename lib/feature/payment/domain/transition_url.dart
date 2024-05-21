import 'package:freezed_annotation/freezed_annotation.dart';

part 'transition_url.freezed.dart';
part 'transition_url.g.dart';

@freezed
class TransitionUrl with _$TransitionUrl {
  const factory TransitionUrl({
    required String transitionUrl,
  }) = _TransitionUrl;

  factory TransitionUrl.fromJson(Map<String, dynamic> json) =>
      _$TransitionUrlFromJson(json);
}
