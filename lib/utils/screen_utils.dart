import 'package:flutter/material.dart';

const sm = 4.0;
const med = 8.0;
const lg = 12.0;
const xl = 16.0;
const xxl = 24.0;

const boxS = SizedBox(width: sm, height: sm);
const boxM = SizedBox(width: med, height: med);
const boxL = SizedBox(width: lg, height: lg);
const boxXL = SizedBox(width: xl, height: xl);
const boxXXL = SizedBox(width: xxl, height: xxl);

const paddingAllS = EdgeInsets.all(sm);
const paddingAllM = EdgeInsets.all(med);
const paddingAllL = EdgeInsets.all(lg);
const paddingAllXL = EdgeInsets.all(xl);
const paddingAllXXL = EdgeInsets.all(xxl);

enum ScreenSize {
  xs,
  sm,
  md,
  lg,
  xl,
}

const breakPoints = [
  450,
  768,
  1024,
  1440,
  1920,
];

/// Pass either a width or height to get a size category in that dimension.
ScreenSize getScreenSize(double dimension) {
  for (int i = 0; i < breakPoints.length; i++) {
    if (dimension < breakPoints[i]) {
      return ScreenSize.values[i];
    }
  }

  return ScreenSize.xl;
}