import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class VehicleImages extends StatefulWidget {
  const VehicleImages({super.key});

  @override
  State<VehicleImages> createState() => _VehicleImagesState();
}

class _VehicleImagesState extends State<VehicleImages> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  final int totalImages = 4; // Total number of images

  void _nextPage() {
    if (currentIndex < totalImages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: AspectRatio(
              aspectRatio: 269 / 156,
              child: PageView.builder(
                controller: _pageController,
                itemCount: totalImages,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    AppImages.imagesRealRedCar,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  );
                },
              ),
            ),
          ),

          // Left Arrow Button
          Positioned(
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios,
                  size: 24,
                  color: currentIndex > 0 ? Colors.black : Colors.grey),
              onPressed: _previousPage,
            ),
          ),

          // Right Arrow Button
          Positioned(
            right: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios,
                  size: 24,
                  color: currentIndex < totalImages - 1
                      ? Colors.black
                      : Colors.grey),
              onPressed: _nextPage,
            ),
          ),
        ],
      ),
    );
  }
}
