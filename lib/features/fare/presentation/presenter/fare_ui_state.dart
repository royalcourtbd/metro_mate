import 'package:metro_mate/core/base/base_ui_state.dart';

class FareUiState extends BaseUiState {
  const FareUiState({required super.isLoading, required super.userMessage});

  factory FareUiState.empty() {
    return FareUiState(isLoading: false, userMessage: '');
  }

  @override
  List<Object?> get props => [isLoading, userMessage];

  //Add more properties to the state

  FareUiState copyWith({bool? isLoading, String? userMessage}) {
    return FareUiState(
      isLoading: isLoading ?? this.isLoading,
      userMessage: userMessage ?? this.userMessage,
    );
  }
}
