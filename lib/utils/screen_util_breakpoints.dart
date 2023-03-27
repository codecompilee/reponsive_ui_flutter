import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilBreakpoints {
  static initMobileDesignSize(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(412, 870));
  }
  static initTabletDesignSize(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(600, 1024));
  }
   static initWebDesignSize(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(1366, 767));
  }
}
