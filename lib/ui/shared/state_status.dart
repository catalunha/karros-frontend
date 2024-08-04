enum StateStatus {
  initial,
  loading,
  data,
  error,
  updated,
  leave,
}

extension StateStatusIs on StateStatus {
  bool get isInitial => this == StateStatus.initial;
  bool get isLoading => this == StateStatus.loading;
  bool get isData => this == StateStatus.data;
  bool get isError => this == StateStatus.error;
  bool get isUpdated => this == StateStatus.updated;
  bool get isLeave => this == StateStatus.leave;
}
