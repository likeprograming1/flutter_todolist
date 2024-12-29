class LoadingState {
  final bool isLoad;

  LoadingState({this.isLoad = false});

  LoadingState copyWith({
    bool? isLoad,
  }) {
    return LoadingState(isLoad: isLoad ?? this.isLoad);
  }
}
