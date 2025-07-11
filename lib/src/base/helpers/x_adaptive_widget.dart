part of 'x_helpers.dart';

abstract class XAdaptiveWidget extends StatelessWidget {
  const XAdaptiveWidget({super.key});

  Widget standardBuild(BuildContext context);
  Widget? androidBuild(BuildContext context) => null;
  Widget? iosBuild(BuildContext context) => null;
  Widget? macosBuild(BuildContext context) => null;
  Widget? linuxBuild(BuildContext context) => null;
  Widget? windowsBuild(BuildContext context) => null;
  Widget? fuchsiaBuild(BuildContext context) => null;
  Widget? webBuild(BuildContext context) => null;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return webBuild(context) ?? standardBuild(context);
    } else if (io_platform.Platform.isAndroid) {
      return androidBuild(context) ?? standardBuild(context);
    } else if (io_platform.Platform.isIOS) {
      return iosBuild(context) ?? standardBuild(context);
    } else if (io_platform.Platform.isMacOS) {
      return macosBuild(context) ?? standardBuild(context);
    } else if (io_platform.Platform.isLinux) {
      return linuxBuild(context) ?? standardBuild(context);
    } else if (io_platform.Platform.isWindows) {
      return windowsBuild(context) ?? standardBuild(context);
    } else if (io_platform.Platform.isFuchsia) {
      return fuchsiaBuild(context) ?? standardBuild(context);
    } else {
      return standardBuild(context);
    }
  }
}
