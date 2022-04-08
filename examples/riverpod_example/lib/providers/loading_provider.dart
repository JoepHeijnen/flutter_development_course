import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LoadingStatus {
  loading,
  completed,
  error,
}

final loadingProvider = StateNotifierProvider<Loading, LoadingStatus>((ref) {
  return Loading();
});

class Loading extends StateNotifier<LoadingStatus> {
  Loading() : super(LoadingStatus.loading);

  void setLoading() {
    state = LoadingStatus.loading;
  }

  void setCompleted() {
    state = LoadingStatus.completed;
  }

  void setError() {
    state = LoadingStatus.error;
  }
}
