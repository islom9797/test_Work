import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ExtraSpace on num {
  SizedBox get ph => SizedBox(height: h.toDouble());

  SizedBox get pw => SizedBox(width: w.toDouble());


}

extension ContextExt on BuildContext {
  TextTheme txtTheme() => Theme.of(this).textTheme;
}

extension IsBlank on dynamic {
  bool get isBlank => this == null
      ? true
      : this is String
          ? toString().trim().isEmpty
          : this is Iterable || this is Map
              ? this.isEmpty
              : false;

  dynamic decode() {
    jsonDecode(this);
  }
}
