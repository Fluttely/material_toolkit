// import 'package:flutter/material.dart';
// import 'package:material_toolkit/material_toolkit.dart';
// import 'package:material_toolkit_example/notifiers/theme_notifier.dart';
// import 'package:material_toolkit_example/widgets/group_item_container.dart';
// import 'package:material_toolkit_example/widgets/group_item_title.dart';
// import 'package:provider/provider.dart';

// class RadiusGroup extends StatelessWidget {
//   const RadiusGroup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     final metrics = theme.extension<XMetricsData>()!;
//     final gaps = metrics.gaps;
//     final radii = metrics.radii;

//     final themeNotifier = Provider.of<ThemeNotifier>(context);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         const GroupItemTitle(title: 'Radius'),
//         gaps.small,
//         GroupItemContainer(
//           children: [
//             RadiusComponent(
//               description: 'None',
//               radius: radii.none,
//               onChanged: null,
//             ),
//             RadiusComponent(
//               description: 'Extra Small',
//               radius: radii.extraSmall,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(extraSmall: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Small',
//               radius: radii.small,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(small: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Semi Small',
//               radius: radii.semiSmall,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(semiSmall: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Medium',
//               radius: radii.medium,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(medium: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Semi Large',
//               radius: radii.semiLarge,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(semiLarge: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Large',
//               radius: radii.large,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(large: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Extra Large',
//               radius: radii.extraLarge,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(extraLarge: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//             RadiusComponent(
//               description: 'Super Large',
//               radius: radii.superLarge,
//               onChanged: (newValue) {
//                 // newValue
//                 themeNotifier.updateRadiiData(
//                   themeNotifier.radiiData.copyWith(superLarge: Radius.circular(newValue!)),
//                 );
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class RadiusComponent extends StatelessWidget {
//   final String description;
//   final Radius radius;
//   final void Function(double? newValue)? onChanged;

//   const RadiusComponent({
//     super.key,
//     required this.description,
//     required this.radius,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final textTheme = theme.textTheme;
//     final colorScheme = theme.colorScheme;

//     final List<double> values = List.generate(65, (index) => (index).toDouble());
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text('$description: Radius.circular('),
//         onChanged == null
//             ? Text(radius.x.toString())
//             : DropdownButton<double>(
//                 value: radius.x,
//                 underline: const SizedBox.shrink(), // Remove o sublinhado completamente
//                 isDense: true,
//                 onChanged: onChanged,
//                 style: textTheme.bodyMedium?.copyWith(color: colorScheme.error),
//                 items: values.map<DropdownMenuItem<double>>(
//                   (double value) {
//                     return DropdownMenuItem<double>(
//                       value: value,
//                       child: Text(value.toString()),
//                     );
//                   },
//                 ).toList(),
//               ),
//         const Text(')'),
//       ],
//     );
//   }
// }
