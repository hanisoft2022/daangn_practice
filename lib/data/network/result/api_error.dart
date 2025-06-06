import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../common/common/common.dart';
import '../../etc/simple_result.dart';

class ApiError {
  int? statusCode;
  bool isApplicationError;
  String message;

  ApiError({
    this.statusCode,
    this.isApplicationError = false,
    required this.message,
  });

  static createErrorResult(e) {
    if (e is DioException) {
      if (!kReleaseMode) {
        return SimpleResult.failure(
            ApiError(message: e.error?.toString() ?? e.message ?? 'message is empty', isApplicationError: e.response == null));
      } else {
        return SimpleResult.failure(ApiError(message: 'api_error'.tr(), statusCode: e.response?.statusCode));
      }
    }

    return SimpleResult.failure(ApiError(message: 'api_error'.tr()));
  }
}
