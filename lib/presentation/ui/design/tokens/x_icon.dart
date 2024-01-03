import 'package:material_toolkit/material_toolkit.dart';

class XIcon extends Icon {
  const XIcon(
    super.icon, {
    super.key,
    super.size,
  });

  XIcon.none(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.iconSizes.none);

  XIcon.small(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.iconSizes.small);

  XIcon.medium(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.iconSizes.medium);

  XIcon.large(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.iconSizes.large);
}
