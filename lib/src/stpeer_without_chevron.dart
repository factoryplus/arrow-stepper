import 'package:arrow_stepper/src/clipper/chevron_crumb_clipper_without_arrow.dart';
import 'package:flutter/cupertino.dart';

import 'border_painter_without_arrow.dart';

class ProgressStepWithOutChevron extends StatelessWidget {
  final double _width;
  final Color _defaultColor;
  final Color _progressColor;
  final bool _wasCompleted;
  final Widget _child;

  const ProgressStepWithOutChevron({
    required double width,
    required Color defaultColor,
    required Color progressColor,
    required bool wasCompleted,
    required Widget child,
    Key? key,
  })  : this._width = width,
        this._defaultColor = defaultColor,
        this._progressColor = progressColor,
        this._wasCompleted = wasCompleted,
        this._child = child,
        super(key: key);

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: BorderPainterWithoutArrow(),
        child: ClipPath(
          child: Container(
            width: this._width,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffC4C4C4)),
              color: _wasCompleted ? this._progressColor : this._defaultColor,
            ),
            child: _child,
          ),
          clipper: ChevronClipperWithoutArrow(),
        ),
      );
}
