enum CustomDurations { mainDuration }

extension CustomDurationsExtension on CustomDurations {
  Duration getDuration() {
    switch (this) {
      case CustomDurations.mainDuration:
        return const Duration(milliseconds: 500);
    }
  }
}
