import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({
    required this.restaurantId,
    required this.restaurantImage,
    super.key,
  });

  final String restaurantId;
  final AssetGenImage restaurantImage;
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = context.screenHeight;
    return Hero(
      tag: widget.restaurantId,
      child: Container(
        height: screenHeight * 0.4,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // images showcase.
            PageView.builder(
              controller: _controller,
              itemCount: 4,
              itemBuilder: (context, index) {
                return widget.restaurantImage.image(
                  fit: BoxFit.fill,
                  width: double.infinity,
                );
              },
            ),

            // back button.
            Positioned(
              top: 50,
              left: 20,
              child: AppButton.iconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_rounded),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    AppColors.primaryWhite,
                  ),
                ),
                size: 24,
              ),
            ),
            // page indicator
            Positioned(
              bottom: 20,
              child: AppSmoothPageIndicator(
                controller: _controller,
                count: 4,
                activeDotColor: AppColors.lighGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
