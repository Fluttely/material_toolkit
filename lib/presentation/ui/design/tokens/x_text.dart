import 'package:material_toolkit/material_toolkit.dart';

enum AppTextStyleType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

class AppText extends StatelessWidget {
  final String data;
  final AppTextStyleType styleType;

  const AppText(
    this.data, {
    this.styleType = AppTextStyleType.labelMedium,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      data,
      style: styleType.toTextStyle(textTheme),
    );
  }
}

extension AppTextStyleExtension on AppTextStyleType {
  TextStyle toTextStyle(TextTheme textTheme) {
    switch (this) {
      case AppTextStyleType.displayLarge:
        return textTheme.displayLarge!;
      case AppTextStyleType.displayMedium:
        return textTheme.displayMedium!;
      case AppTextStyleType.displaySmall:
        return textTheme.displaySmall!;
      case AppTextStyleType.headlineLarge:
        return textTheme.headlineLarge!;
      case AppTextStyleType.headlineMedium:
        return textTheme.headlineMedium!;
      case AppTextStyleType.headlineSmall:
        return textTheme.headlineSmall!;
      case AppTextStyleType.titleLarge:
        return textTheme.titleLarge!;
      case AppTextStyleType.titleMedium:
        return textTheme.titleMedium!;
      case AppTextStyleType.titleSmall:
        return textTheme.titleSmall!;
      case AppTextStyleType.bodyLarge:
        return textTheme.bodyLarge!;
      case AppTextStyleType.bodyMedium:
        return textTheme.bodyMedium!;
      case AppTextStyleType.bodySmall:
        return textTheme.bodySmall!;
      case AppTextStyleType.labelLarge:
        return textTheme.labelLarge!;
      case AppTextStyleType.labelMedium:
        return textTheme.labelMedium!;
      case AppTextStyleType.labelSmall:
        return textTheme.labelSmall!;
    }
  }
}
