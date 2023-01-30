import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/slide_to/slider_button.dart';

/// Slider call to action component
class SlideAction extends StatefulWidget {
  /// The size of the sliding icon
  final double sliderButtonIconSize;

  /// The offset on the y axis of the slider icon
  final double _sliderButtonYOffset = 60;

  /// The child that is rendered instead of the default Text widget
  final Widget? child;

  /// The height of the component
  final double height;

  /// The color of the inner circular button, of the tick icon of the text.
  /// If not set, this attribute defaults to primaryIconTheme.
  final Color? innerColor;

  /// The color of the external area and of the arrow icon.
  /// If not set, this attribute defaults to accentColor from your theme.
  final Color? outerColor;

  /// The borderRadius of the sliding icon and of the background
  final double borderRadius;

  /// Callback called on submit
  /// If this is null the component will not animate to complete
  final VoidCallback? onSubmit;

  /// Callback called on Cancel
  final VoidCallback? onCancel;

  /// Elevation of the component
  final double elevation;

  /// The widget to render instead of the default submitted icon
  final Widget? submittedIcon;

  /// The duration of the animations
  final Duration animationDuration;

  /// If true the widget will be reversed
  final bool reversed;

  /// the alignment of the widget once it's submitted
  final Alignment alignment;

  /// Create a new instance of the widget
  const SlideAction({
    super.key,
    this.sliderButtonIconSize = 24,
    this.height = 70,
    this.outerColor,
    this.borderRadius = 52,
    this.elevation = 6,
    this.animationDuration = const Duration(milliseconds: 300),
    this.reversed = false,
    this.alignment = Alignment.center,
    this.submittedIcon,
    this.onSubmit,
    this.onCancel,
    this.child,
    this.innerColor,
  });

  @override
  SlideActionState createState() => SlideActionState();
}

/// Use a GlobalKey to access the state. This is the only way to call [SlideActionState.reset]
class SlideActionState extends State<SlideAction> with TickerProviderStateMixin {
  final GlobalKey _containerKey = GlobalKey();
  final GlobalKey _sliderKey = GlobalKey();
  double _dx = 0;
  double _maxDx = 0;
  double _minDx = 0;

  double get _progress => _dx == 0 ? 0 : _dx / _maxDx;
  double _endDx = 0;
  double _dz = 1;
  double? _initialContainerWidth, _containerWidth;
  double _checkAnimationDx = 0;
  bool submitted = false;
  bool isDown = false;
  late AnimationController _checkAnimationController,
      _shrinkAnimationController,
      _resizeAnimationController,
      _cancelAnimationController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(widget.reversed ? pi : 0),
        child: Container(
          key: _containerKey,
          height: widget.height,
          width: _containerWidth,
          constraints: _containerWidth != null ? null : BoxConstraints.expand(height: widget.height),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: widget.outerColor ?? Theme.of(context).colorScheme.secondary,
              gradient: isDown ? HyphaColors.gradientBlu : null,
            ),
            child: submitted
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(widget.reversed ? pi : 0),
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.antiAlias,
                        children: <Widget>[
                          widget.submittedIcon ??
                              Icon(
                                Icons.done,
                                color: widget.innerColor ?? Theme.of(context).primaryIconTheme.color,
                              ),
                          Positioned.fill(
                            right: 0,
                            child: Transform(
                              transform: Matrix4.rotationY(_checkAnimationDx * (pi / 2)),
                              alignment: Alignment.centerRight,
                              child: ColoredBox(
                                color: widget.outerColor ?? Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Positioned(
                        right: 90,
                        child: Opacity(
                          opacity: 1 - 1 * _progress.abs(),
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(widget.reversed ? pi : 0),
                            child: widget.child,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 20,
                          child: Opacity(
                            opacity: 1 - 1 * _progress.abs(),
                            child: const Icon(Icons.close),
                          )),
                      const Positioned(right: 20, child: Icon(Icons.check)),
                      Positioned(
                        left: widget._sliderButtonYOffset,
                        child: Transform.scale(
                          scale: _dz,
                          origin: Offset(_dx, 0),
                          child: Transform.translate(
                            offset: Offset(_dx, 0),
                            child: Container(
                              key: _sliderKey,
                              child: GestureDetector(
                                onHorizontalDragUpdate: onHorizontalDragUpdate,
                                onHorizontalDragDown: onHorizontalDragDown,
                                onHorizontalDragEnd: (details) async {
                                  _endDx = _dx;
                                  isDown = false;
                                  if (_progress >= 0.8 || widget.onSubmit == null) {
                                    await onActionTaken(widget.onSubmit!);
                                  } else if (_progress <= -0.3 || widget.onCancel == null) {
                                    await onActionTaken(widget.onCancel!);
                                  } else {
                                    _cancelAnimation();
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: SliderButton(isDown: isDown),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Future<void> onActionTaken(VoidCallback callback) async {
    await _resizeAnimation();
    await _shrinkAnimation();
    await _checkAnimation();
    callback();
  }

  void onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dx = (_dx + details.delta.dx).clamp(_minDx, _maxDx);
      isDown = true;
    });
  }

  void onLongPressDown(LongPressDownDetails details) {
    setState(() {
      isDown = true;
    });
  }

  void onHorizontalDragDown(DragDownDetails details) {
    setState(() {
      isDown = true;
    });
  }

  /// Call this method to revert the animations
  Future reset() async {
    await _checkAnimationController.reverse().orCancel;

    submitted = false;

    await _shrinkAnimationController.reverse().orCancel;

    await _resizeAnimationController.reverse().orCancel;

    await _cancelAnimation();
  }

  Future _checkAnimation() async {
    _checkAnimationController.reset();

    final animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _checkAnimationController,
      curve: Curves.slowMiddle,
    ));

    animation.addListener(() {
      if (mounted) {
        setState(() {
          _checkAnimationDx = animation.value;
        });
      }
    });
    await _checkAnimationController.forward().orCancel;
  }

  Future _shrinkAnimation() async {
    _shrinkAnimationController.reset();

    final diff = _initialContainerWidth! - widget.height;
    final animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _shrinkAnimationController,
      curve: Curves.easeOutCirc,
    ));

    animation.addListener(() {
      if (mounted) {
        setState(() {
          _containerWidth = _initialContainerWidth! - (diff * animation.value);
        });
      }
    });

    setState(() {
      submitted = true;
    });
    await _shrinkAnimationController.forward().orCancel;
  }

  Future _resizeAnimation() async {
    _resizeAnimationController.reset();

    final animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _resizeAnimationController,
      curve: Curves.easeInBack,
    ));

    animation.addListener(() {
      if (mounted) {
        setState(() {
          _dz = 1 - animation.value;
        });
      }
    });
    await _resizeAnimationController.forward().orCancel;
  }

  Future _cancelAnimation() async {
    _cancelAnimationController.reset();
    final animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _cancelAnimationController,
      curve: Curves.fastOutSlowIn,
    ));

    animation.addListener(() {
      if (mounted) {
        setState(() {
          _dx = _endDx - (_endDx * animation.value);
        });
      }
    });
    _cancelAnimationController.forward().orCancel;
  }

  @override
  void initState() {
    super.initState();

    _cancelAnimationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _checkAnimationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _shrinkAnimationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _resizeAnimationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox? containerBox = _containerKey.currentContext!.findRenderObject() as RenderBox?;
      _containerWidth = containerBox?.size.width;
      _initialContainerWidth = _containerWidth;

      final RenderBox? sliderBox = _sliderKey.currentContext!.findRenderObject() as RenderBox?;
      final sliderWidth = sliderBox?.size.width ?? double.infinity;

      _maxDx = _containerWidth! - (sliderWidth / 2) - 60 - widget._sliderButtonYOffset;
      _minDx = (sliderWidth / 2) - 60 - widget._sliderButtonYOffset;
    });
  }

  @override
  void dispose() {
    _cancelAnimationController.dispose();
    _checkAnimationController.dispose();
    _shrinkAnimationController.dispose();
    _resizeAnimationController.dispose();
    super.dispose();
  }
}
