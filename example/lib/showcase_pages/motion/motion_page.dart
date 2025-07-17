import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/showcase_pages/motion/animated_visibility.dart';
import 'package:material_toolkit_example/showcase_pages/motion/container_transform.dart';
import 'package:material_toolkit_example/showcase_pages/motion/page_transitions_builder.dart';
import 'package:material_toolkit_example/showcase_pages/motion/route_aware_container_transform.dart';
import 'package:material_toolkit_example/showcase_pages/motion/shared_axis_switcher.dart';

class MotionPage extends StatelessWidget {
  const MotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Motion')),
      body: ListView(
        padding: const EdgeInsets.all(MaterialSpacing.space24),
        children: [
          _MotionArea(
            title: 'MaterialAnimatedVisibility (Widget)',
            color: Colors.red,
            child: MaterialAnimatedVisibilityShowcase(),
          ),
          _MotionArea(
            title: 'MaterialSharedAxisSwitcher (Widget)',
            color: Colors.blue,
            child: MaterialSharedAxisSwitcherShowcase(),
          ),
          _MotionArea(
            title: 'MaterialContainerTransform (Widget)',
            color: Colors.yellow,
            child: MaterialContainerTransformShowcase(),
          ),
          _MotionArea(
            title: 'RouteAwareContainerTransform (Widget)',
            color: Colors.green,
            child: RouteAwareContainerTransformShowcase(),
          ),
          // _MotionArea(
          //   title: 'MaterialFadeThrough (Widget)',
          //   color: Colors.green,
          //   child: MaterialFadeThroughShowcase(),
          // ),
          _MotionArea(
            color: Colors.pink,
            title: 'MaterialPageTransitionsBuilder (Widget)',
            child: MaterialPageTransitionsBuilderShowcase(),
          ),
        ],
      ),
    );
  }
}

class _MotionArea extends StatelessWidget {
  const _MotionArea({
    required this.title,
    required this.color,
    required this.child,
  });

  final String title;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        MaterialTitle(title: title),
        Container(
          color: color,
          child: child,
        ),
      ],
    );
  }
}
