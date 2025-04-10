import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_entity.freezed.dart';

part 'quote_entity.g.dart';

@freezed
class QuoteEntity with _$QuoteEntity {
  const factory QuoteEntity({
    @Default('') String q,
    @Default('') String a,
  }) = _QuoteEntity;

  factory QuoteEntity.fromJson(Map<String, Object?> json) => _$QuoteEntityFromJson(json);
}
