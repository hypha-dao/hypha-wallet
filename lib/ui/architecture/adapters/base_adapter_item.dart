import 'package:flutter/material.dart';

abstract class BaseAdapterItem<T> {
  bool canHandleData(T data);
  Widget buildAdapterView(T data);
}
