import 'package:material_toolkit/material_toolkit.dart';

class XIcon extends Icon {
  const XIcon(
    super.icon, {
    super.key,
    super.size,
  }) : assert(size == null || (size >= 16.0 && size <= 512.0));

  XIcon.none(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.none);

  XIcon.x16(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x16);

  XIcon.x24(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x24);

  XIcon.x32(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x32);

  XIcon.x64(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x64);

  XIcon.x128(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x128);

  XIcon.x256(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x256);

  XIcon.x512(
    super.icon, {
    super.key,
  }) : super(size: MaterialX.of(MaterialX.context).metrics!.iconSizes.x512);
}
