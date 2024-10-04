import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:universal_io/io.dart' as io_platform;

abstract class XAdaptiveWidget extends StatelessWidget {
  const XAdaptiveWidget({super.key});

  Widget? android(BuildContext context) => null;
  Widget? ios(BuildContext context) => null;
  Widget? macos(BuildContext context) => null;
  Widget? linux(BuildContext context) => null;
  Widget? windows(BuildContext context) => null;
  Widget? fuchsia(BuildContext context) => null;
  Widget? web(BuildContext context) => null;
  Widget standard(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return web(context) ?? standard(context);
    }

    if (io_platform.Platform.isAndroid) {
      return android(context) ?? standard(context);
    } else if (io_platform.Platform.isIOS) {
      return ios(context) ?? standard(context);
    } else if (io_platform.Platform.isMacOS) {
      return macos(context) ?? standard(context);
    } else if (io_platform.Platform.isLinux) {
      return linux(context) ?? standard(context);
    } else if (io_platform.Platform.isWindows) {
      return windows(context) ?? standard(context);
    } else if (io_platform.Platform.isFuchsia) {
      return fuchsia(context) ?? standard(context);
    }

    return standard(context);
  }
}
