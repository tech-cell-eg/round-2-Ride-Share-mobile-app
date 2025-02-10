import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/app_images.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/onBoarding/UI/Widgets/on_boarding_pages.dart';
import 'package:ride_share/features/onBoarding/UI/Widgets/prograss_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  double prograss = 1;
  void nextPage() {
    if (prograss < 3) {
      setState(() {
        prograss++;
      });
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.main);
                  },
                  child: Text(AppStrings.skip, style: AppTextStyles.font16Grey41Regular),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: [
                    const OnBoardingPages(
                      image: AppImages.imagesOnBoarding1,
                      mainText: AppStrings.anyWhereYouAre,
                    ),
                    const OnBoardingPages(
                      image: AppImages.imagesOnBoarding2,
                      mainText: AppStrings.atAnyTime,
                    ),
                    const OnBoardingPages(
                        image: AppImages.imagesOnBoarding3,
                        mainText: AppStrings.takeYourCar),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              PrograssButton(
                prograss: prograss,
                onPressed: nextPage,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
