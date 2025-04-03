import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'vo_package.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'vo_package.g.dart';

@freezed
class Package with _$Package {
  factory Package({
    required String name,
    required String description,
    String? homepage,
    String? repository,
    required List<String> authors,
    required String version,
    String? license,
    required bool isMarkdown,
    required bool isSdk,
    required bool isDirectDependency,
  }) = _Package;

  factory Package.fromJson(Map<String, Object?> json) => _$PackageFromJson(json);
}
