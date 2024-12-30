class ReadState {
  final int pageIndex;
  final bool welcomepageOn;
  ReadState({this.pageIndex = 0, this.welcomepageOn = false});

  ReadState copywith({int? pageIndex, bool? welcomepageOn}) {
    return ReadState(
        pageIndex: pageIndex ?? this.pageIndex,
        welcomepageOn: welcomepageOn ?? this.welcomepageOn);
  }
}
