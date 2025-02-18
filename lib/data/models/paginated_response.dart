// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/data/models/json_types.dart';
import 'package:app/data/models/paginated.dart';
import 'package:json_annotation/json_annotation.dart';

part "paginated_response.g.dart";

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class PaginatedResponse<T> implements Paginated<T> {
  const PaginatedResponse({
    required this.data,
    required this.pagesCount,
  });

  @override
  final List<T> data;
  final int pagesCount;

  factory PaginatedResponse.fromJson(Map<String, dynamic> json, FromJsonT<T> fromJsonT) =>
      _$PaginatedResponseFromJson<T>(json, fromJsonT);

  PaginatedResponse<T> copyWith({
    List<T>? result,
    int? count,
    int? message,
    int? statusCode,
  }) {
    return PaginatedResponse<T>(
      data: result ?? this.data,
      pagesCount: statusCode ?? this.pagesCount,
    );
  }

  @override
  int get total => pagesCount;
}
