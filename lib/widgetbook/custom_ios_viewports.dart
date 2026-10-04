import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:widgetbook/widgetbook.dart';

/// プロジェクト固有の iOS ビューポート（Widgetbook 同梱にない機種など）。
abstract class CustomIosViewports {
  /// iPhone SE 第1世代（2016・4インチ、論理 320×568 @2x）。
  static const iphoneSE1stGen = ViewportData(
    name: 'iPhone SE (1st gen)',
    width: 320,
    height: 568,
    pixelRatio: 2,
    platform: TargetPlatform.iOS,
    safeAreas: EdgeInsets.only(top: 20),
  );
}
