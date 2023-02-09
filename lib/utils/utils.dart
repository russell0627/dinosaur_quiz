import 'package:flutter/material.dart' show Widget, EdgeInsets, Padding;

extension IterableWidgetX on Iterable<Widget> {
  Iterable<Widget> joinWidgetList(Widget separator) {
    final Iterator<Widget> iterator = this.iterator;

    final List<Widget> result = [];

    if (!iterator.moveNext()) {
      return result;
    }

    result.add(iterator.current);

    while (iterator.moveNext()) {
      result.add(separator);
      result.add(iterator.current);
    }

    return result;
  }

  Iterable<Widget> padAll(EdgeInsets padding) {
    return map((Widget widget) {
      return Padding(
        padding: padding,
        child: widget,
      );
    });
  }
}
