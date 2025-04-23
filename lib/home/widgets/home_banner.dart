import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Banner
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: PageView.builder(
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Assets.images.onboardingPageImage.image(
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                    ),
                    Text(
                      'OFFERS',
                      style: context.titleLarge!.copyWith(
                        fontWeight: AppFontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: AppSpacing.lg),

        // page indicator
        AppSmoothPageIndicator(controller: _controller, count: 3),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
