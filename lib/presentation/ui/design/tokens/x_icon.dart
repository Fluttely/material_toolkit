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
  }) : super(size: XService.instance.metrics.sizes.icon.none);

  XIcon.extraSmall(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.extraSmall);

  XIcon.small(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.small);

  XIcon.semiSmall(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.semiSmall);

  XIcon.medium(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.medium);

  XIcon.semiLarge(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.semiLarge);

  XIcon.large(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.large);

  XIcon.extraLarge(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.extraLarge);
}
