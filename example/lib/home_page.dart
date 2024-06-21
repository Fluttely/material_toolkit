import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit_example/models/user.dart';
import 'package:material_toolkit_example/theme/metrics.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [];

  Future<List<User>> _loadJson(String path) async {
    String jsonString = await rootBundle.loadString(path);
    List<dynamic> jsonResponse = json.decode(jsonString);
    return jsonResponse.map((user) => User.fromJson(user)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    // final sampleAsset = metrics.assets[$token.asset.sample]!;
    final mobileBreakpoint = metrics.breakpoints.mobile;
    // final quickDuration = metrics.durations.quick;
    // final astronautFont = metrics.fonts[$token.font.astronaut]!;
    // final titleTextShadow = metrics.textShadows[$token.textShadow.title]!;
    // final titleTextStyle = metrics.textStyles[$token.textStyle.title]!;
    // final primaryColor = metrics.colors[$token.color.primary]!;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: primaryColor,
      //   title: const Text('titleTextStyle'),
      //   titleTextStyle: titleTextStyle.copyWith(
      //     shadows: [
      //       titleTextShadow,
      //     ],
      //     fontFamily: astronautFont,
      //   ),
      //   actions: [
      //     ElevatedButton(
      //       onPressed: () async {
      //         await Future.delayed(quickDuration);
      //         final loadedUsers = await _loadJson(sampleAsset);
      //         setState(() {
      //           users = loadedUsers;
      //         });
      //       },
      //       child: const Text('Load Users'),
      //     ),
      //   ],
      // ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < mobileBreakpoint.maxWidth) {
            return Column(
              children: _body(users, context),
            );
          } else {
            return Row(
              children: _body(users, context),
            );
          }
        },
      ),
    );
  }
}

List<Widget> _body(List<User> users, BuildContext context) {
  final metrics = Theme.of(context).extension<XMetricsData>()!;

  final largeBoxShadow = metrics.boxShadows.large;

  // final primaryColor = metrics.colors[$token.color.primary]!;
  // final cardColor = metrics.colors[$token.color.card]!;

  final level2Elevation = metrics.elevations.level7;

  // final fruitImage = metrics.images[$token.image.fruit]!;
  // final fruitAssetName = fruitImage.getAssetName() ?? '';
  // final googleLogo = metrics.images[$token.image.googleLogo]!;
  // final googleLogoUrl = googleLogo.getNetworkUrl() ?? '';

  final mediumBorderRadius = metrics.borderRadii.medium;

  final extraLargeSpace = metrics.spaces.extraLarge;
  final extraLargeGap = metrics.gaps.extraLarge;

  // final fireEmoji = metrics.svgs[$token.svg.fireEmoji]!;
  // final brazilFlag = metrics.svgs[$token.svg.brazilFlag]!;

  // final titleTextStyle = metrics.textStyles[$token.textStyle.title]!;

  return [
    // Expanded(
    //   child: ListView.builder(
    //     itemCount: users.length,
    //     itemBuilder: (context, index) {
    //       User user = users[index];

    //       return ListTile(
    //         tileColor: cardColor,
    //         titleTextStyle: titleTextStyle,
    //         title: Text(user.name),
    //         subtitle: Text(user.email),
    //         trailing: Text(user.age),
    //       );
    //     },
    //   ),
    // ),
    Expanded(
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                largeBoxShadow,
              ],
            ),
            // child: fruitImage,
          ),
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     color: cardColor.withOpacity(0.5),
          //   ),
          //   child: Text(fruitAssetName),
          // ),
        ],
      ),
    ),
    extraLargeGap,
    // Expanded(
    //   child: Stack(
    //     children: [
    //       googleLogo,
    //       DecoratedBox(
    //         decoration: BoxDecoration(
    //           color: cardColor.withOpacity(0.5),
    //         ),
    //         child: Text(googleLogoUrl),
    //       ),
    //     ],
    //   ),
    // ),
    extraLargeGap,
    Card(
      // color: cardColor,
      elevation: level2Elevation,
      // child: fireEmoji,
    ),
    extraLargeGap,
    Container(
      margin: EdgeInsets.all(extraLargeSpace),
      padding: EdgeInsets.all(extraLargeSpace),
      decoration: BoxDecoration(
        // color: primaryColor,
        borderRadius: mediumBorderRadius,
        boxShadow: [
          largeBoxShadow,
        ],
      ),
      // child: Center(
      //   child: brazilFlag,
      // ),
    ),
  ];
}
