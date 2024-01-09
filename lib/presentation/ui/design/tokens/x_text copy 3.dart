import 'package:material_toolkit/material_toolkit.dart';

class XText extends Text {
  const XText(
    super.data, {
    super.key,
    super.style,
    super.locale,
    super.maxLines,
    super.overflow,
    super.selectionColor,
  });

  // factory XText.displaySmall(String data,  {Key? key}) {
  //   final textTheme = Theme.of(context).textTheme;
  //   return XText(
  //     data,
  //     key: key,
  //     style: textTheme.displaySmall,
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return const Text('');
  // }
  // XText.displaySmall(
  //
  //   super.data, {
  //   super.key,
  // }) : super() {
  //   super.style =
  //    Builder<>(
  //               builder: (context) {
  //                 return

  // MaterialX.theme.textTheme.displaySmall!;);
  // }

  XText.displaySmall(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.displaySmall!);

  XText.displayMedium(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.displayMedium!);

  XText.displayLarge(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.displayLarge!);

  XText.headlineSmall(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.headlineSmall!);

  XText.headlineMedium(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.headlineMedium!);

  XText.headlineLarge(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.headlineLarge!);

  XText.titleSmall(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.titleSmall!);

  XText.titleMedium(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.titleMedium!);

  XText.titleLarge(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.titleLarge!);

  XText.bodySmall(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.bodySmall!);

  XText.bodyMedium(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.bodyMedium!);

  XText.bodyLarge(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.bodyLarge!);

  XText.labelSmall(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.labelSmall!);

  XText.labelMedium(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.labelMedium!);

  XText.labelLarge(
    super.data, {
    super.key,
  }) : super(style: XMetricsData2.theme.textTheme.labelLarge!);
}
