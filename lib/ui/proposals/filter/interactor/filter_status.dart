enum FilterStatus { active, past }

extension FilterStatusExtension on FilterStatus {
  String get string {
    switch (this) {
      case FilterStatus.active:
        return 'Active';
      case FilterStatus.past:
        return 'Past';
    }
  }
}
