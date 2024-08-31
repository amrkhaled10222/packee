import 'package:flutter/material.dart';
import 'package:packeee/src/features/onboarding/view_model/onboarding_provider.dart';
import 'package:packeee/src/widget/onboarding_content.dart';
import 'package:provider/provider.dart';
import 'package:recapet_widgets/recapet_widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OnboardingViewModel(),
      child: Scaffold(
        body: SafeArea(
          child: Consumer<OnboardingViewModel>(
            builder: (BuildContext context, value, Widget? child) {
              return Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: PageView.builder(
                      controller: value.pageController,
                      onPageChanged: value.onPageChanged,
                      itemCount: value.screens.length,
                      itemBuilder: (context, index) => OnboardingContent(
                        image: value.screens[index].imageUrl,
                        title: value.screens[index].title,
                        description: value.screens[index].details,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Visibility(
                  //           visible: onboardingViewModel.currentPage > 0,
                  //           child: CallToActionButtonRounded(
                  //               buttonText: "Pervious",
                  //               //    buttonColor: ZeinaColors.buttonBackgroundColor.withOpacity(.08),
                  //               buttonTextStyle: const TextStyle(
                  //                 fontSize: 14,
                  //                 fontWeight: FontWeight.w700,
                  //                 //   color: ZeinaColors.textColor,
                  //               ),
                  //               buttonCallback: () =>
                  //                   context.read<OnboardingViewModel>().previousPage()),
                  //         ),
                  //       ),
                  //       Visibility(
                  //        // replacement: EcmsSizer.halfHorizontal(),
                  //         visible:
                  //             onboardingViewModel.currentPage != manicureOnboardingData.length - 1,
                  //         child: Expanded(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: List.generate(
                  //               manicureOnboardingData.length,
                  //               (index) => DotIndicator(
                  //                 index: index,
                  //                 currentPageindex: onboardingViewModel.currentPage,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Visibility(
                  //         replacement: EcmsSizer.half(),
                  //         visible:
                  //             onboardingViewModel.currentPage != manicureOnboardingData.length - 1,
                  //         child: Expanded(
                  //             child: EcmsActionButtonRounded(
                  //           buttonText: tr("Next"),
                  //           buttonColor: ZeinaColors.buttonBackgroundColor,
                  //           buttonTextStyle: const TextStyle(
                  //             fontSize: 14,
                  //             fontWeight: FontWeight.w700,
                  //             color: ZeinaColors.textColor,
                  //           ),
                  //           buttonCallback: () =>
                  //               context.read(onboardingProvider(manicureOnboardingData)).nextPage(),
                  //         )),
                  //       ),
                  //       Visibility(
                  //         visible:
                  //             onboardingViewModel.currentPage == manicureOnboardingData.length - 1,
                  //         child: Expanded(
                  //             flex: 2,
                  //             child: EcmsActionButtonRounded(
                  //               buttonText: tr("Start now"),
                  //               buttonColor: ZeinaColors.buttonBackgroundColor,
                  //               buttonTextStyle: const TextStyle(
                  //                 fontSize: 14,
                  //                 fontWeight: FontWeight.w700,
                  //                 color: ZeinaColors.textColor,
                  //               ),
                  //               buttonCallback: () => pushScreen(
                  //                   context: context,
                  //                   screen: const ServiceDetailsRoute(),
                  //                   replace: true),
                  //             )),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
