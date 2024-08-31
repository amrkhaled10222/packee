import 'package:packeee/src/helper/context_extension.dart';
import 'package:recapet_widgets/recapet_widgets.dart';
import '../../../gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AppImage(
        Assets.images.packeeLogo.path,
        height: context.height / 3,
      )),
    );
  }
}
