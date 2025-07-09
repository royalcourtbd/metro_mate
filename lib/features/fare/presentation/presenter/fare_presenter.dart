import 'dart:async';
import 'package:metro_mate/core/base/base_presenter.dart';
import 'package:metro_mate/core/utility/utility.dart';
import 'package:metro_mate/features/fare/presentation/presenter/fare_ui_state.dart';

class FarePresenter extends BasePresenter<FareUiState> {
  final Obs<FareUiState> uiState = Obs<FareUiState>(FareUiState.empty());
  FareUiState get currentUiState => uiState.value;

  @override
  Future<void> addUserMessage(String message) async {
    uiState.value = currentUiState.copyWith(userMessage: message);
    showMessage(message: currentUiState.userMessage);
  }

  @override
  Future<void> toggleLoading({required bool loading}) async {
    uiState.value = currentUiState.copyWith(isLoading: loading);
  }
}
