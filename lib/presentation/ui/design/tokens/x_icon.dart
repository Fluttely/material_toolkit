import 'package:material_toolkit/material_toolkit.dart';

class XIconTokens extends Icon {
  const XIconTokens.custom(
    super.icon, {
    super.key,
    super.size,
  });

  XIconTokens.none(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.none);

  XIconTokens.extraSmall(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.extraSmall);

  XIconTokens.small(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.small);

  XIconTokens.semiSmall(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.semiSmall);

  XIconTokens.medium(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.medium);

  XIconTokens.semiLarge(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.semiLarge);

  XIconTokens.large(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.large);

  XIconTokens.extraLarge(
    super.icon, {
    super.key,
  }) : super(size: XService.instance.metrics.sizes.icon.extraLarge);
}
