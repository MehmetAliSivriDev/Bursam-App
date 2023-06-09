import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/screens/main_screen.dart';
import 'package:bursam_app/utilities/custom_durations.dart';
import 'package:bursam_app/utilities/img_paths.dart';
import 'package:flutter/material.dart';

class PreloadingScreen extends StatefulWidget {
  const PreloadingScreen({super.key});

  @override
  State<PreloadingScreen> createState() => _PreloadingScreenState();
}

class _PreloadingScreenState extends State<PreloadingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _preLoadingFab(context),
      body: _preLoadingPageView(),
    );
  }

  Row _preLoadingFab(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedCrossFade(
            firstChild: FloatingActionButton(
                heroTag: 'btn1',
                onPressed: () {
                  _pageController.previousPage(
                      duration: CustomDurations.mainDuration.getDuration(),
                      curve: Curves.ease);
                },
                child: const Icon(Icons.chevron_left)),
            secondChild: const SizedBox.shrink(),
            crossFadeState: (_currentIndex == 0)
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: CustomDurations.mainDuration.getDuration()),
        const SizedBox(
          width: 5,
        ),
        FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () {
              _pageController.nextPage(
                  duration: CustomDurations.mainDuration.getDuration(),
                  curve: Curves.ease);
            },
            child: AnimatedCrossFade(
                firstChild: const Icon(Icons.chevron_right),
                secondChild: IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const MainScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    icon: const Text(ConstStrings.preScreenGO)),
                crossFadeState: (_currentIndex == 2)
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: CustomDurations.mainDuration.getDuration())),
      ],
    );
  }

  PageView _preLoadingPageView() {
    return PageView(
      onPageChanged: _updateIndex,
      physics: const NeverScrollableScrollPhysics(),
      padEnds: false,
      controller: _pageController,
      children: [
        Image.asset(
          ImagePathsJPG.banner1.path(),
          fit: BoxFit.fill,
        ),
        Image.asset(
          ImagePathsJPG.banner2.path(),
          fit: BoxFit.fill,
        ),
        Image.asset(
          ImagePathsJPG.banner3.path(),
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
