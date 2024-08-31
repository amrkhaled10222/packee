import 'package:flutter/material.dart';
import 'package:packeee/src/features/onboarding/data/onboarding_content.dart';
import 'package:packeee/src/helper/default_provider.dart';

class OnboardingViewModel extends DefaultProvider {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  int get currentPage => _currentPage;
  PageController get pageController => _pageController;

  OnboardingViewModel();
  List<OnBoardingContent> screens = [];

  void nextPage() {
    if (_currentPage < screens.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
    notifyListeners();
  }

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
