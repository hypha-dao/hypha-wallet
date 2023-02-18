library count_down_timer;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/countdown_timer/countdown.dart';

///CountDownText : A simple text widget that display the countdown timer
///based on the dateTime given e.g DateTime.utc(2050)
class CountDownText extends StatefulWidget {
  const CountDownText({
    super.key,
    required this.due,
    required this.finishedText,
    this.longDateName = false,
    this.style,
    this.showLabel = false,
    this.daysTextLong = ' days ',
    this.hoursTextLong = ' hours ',
    this.minutesTextLong = ' minutes ',
    this.secondsTextLong = ' seconds ',
    this.daysTextShort = ' d ',
    this.hoursTextShort = ' h ',
    this.minutesTextShort = ' m ',
    this.secondsTextShort = ' s ',
  });

  final DateTime? due;
  final String? finishedText;
  final bool? longDateName;
  final bool? showLabel;
  final TextStyle? style;
  final String daysTextLong;
  final String hoursTextLong;
  final String minutesTextLong;
  final String secondsTextLong;
  final String daysTextShort;
  final String hoursTextShort;
  final String minutesTextShort;
  final String secondsTextShort;

  @override
  _CountDownTextState createState() => _CountDownTextState();
}

class _CountDownTextState extends State<CountDownText> {
  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      CountDown().timeLeft(
          widget.due!,
          widget.finishedText!,
          widget.daysTextLong,
          widget.hoursTextLong,
          widget.minutesTextLong,
          widget.secondsTextLong,
          widget.daysTextShort,
          widget.hoursTextShort,
          widget.minutesTextShort,
          widget.secondsTextShort,
          longDateName: widget.longDateName,
          showLabel: widget.showLabel),
      style: widget.style,
    );
  }
}
