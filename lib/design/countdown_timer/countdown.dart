class CountDown {
  String timeLeft(
      DateTime due,
      String finishedText,
      String daysTextLong,
      String hoursTextLong,
      String minutesTextLong,
      String secondsTextLong,
      String daysTextShort,
      String hoursTextShort,
      String minutesTextShort,
      String secondsTextShort,
      {bool? longDateName,
      bool? showLabel}) {
    String retVal = '';

    final Duration _timeUntilDue = due.difference(DateTime.now());

    final int _daysUntil = _timeUntilDue.inDays;
    final int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    final int _minUntil = _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);
    final int _secUntil = _timeUntilDue.inSeconds - (_minUntil * 60);
    // String s = _secUntil.toString().substring(_secUntil.toString().length - 2);
    // //Fixed Invalid Range Value
    final String s = _secUntil.toString().length <= 2
        ? _secUntil.toString()
        : _secUntil.toString().substring(_secUntil.toString().length - 2);

    //Check whether to return longDateName date name or not
    if (showLabel == false) {
      if (_daysUntil > 0) {
        retVal += '$_daysUntil : ';
      }
      if (_hoursUntil > 0) {
        retVal += '$_hoursUntil : ';
      }
      if (_minUntil > 0) {
        retVal += '$_minUntil : ';
      }
      if (_secUntil > 0) {
        retVal += s;
      }
    } else {
      if (longDateName == false) {
        if (_daysUntil > 0) {
          retVal += _daysUntil.toString() + daysTextShort;
        }
        if (_hoursUntil > 0) {
          retVal += _hoursUntil.toString() + hoursTextShort;
        }
        if (_minUntil > 0) {
          retVal += _minUntil.toString() + minutesTextShort;
        }
        if (_secUntil > 0) {
          retVal += s + secondsTextShort;
        }
      } else {
        if (_daysUntil > 0) {
          retVal += _daysUntil.toString() + daysTextLong;
        }
        if (_hoursUntil > 0) {
          retVal += _hoursUntil.toString() + hoursTextLong;
        }
        if (_minUntil > 0) {
          retVal += _minUntil.toString() + minutesTextLong;
        }
        if (_secUntil > 0) {
          retVal += s + secondsTextLong;
        }
      }
    }
    if (_secUntil < 1) {
      retVal = finishedText;
    }
    return retVal;
  }
}
