// lib/data/services/error_message_handler_impl.dart

import 'package:metro_mate/core/domain/contracts/error_message_handler.dart';

class ErrorMessageHandlerImpl implements ErrorMessageHandler {
  @override
  String generateErrorMessage(Object error) {
    if (error is FormatException) {
      return 'Data format is not correct';
    }

    return error.toString();
  }
}
