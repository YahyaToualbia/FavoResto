import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/home/home.dart';
import 'package:favo_resto/profile/profile.dart';
import 'package:favo_resto/search/search.dart';
import 'package:favo_resto/survey/survey.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  static Route<void> route() =>
      MaterialPageRoute(builder: (context) => const NavigationMenu());

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.neutralWhite,
      child: AppScaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          destinations: [
            NavigationDestination(
              icon: HugeIcon(
                color: AppColors.black,
                icon: HugeIcons.strokeRoundedHome01,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: HugeIcon(
                color: AppColors.black,
                icon: HugeIcons.strokeRoundedSearch02,
              ),
              label: 'Search',
            ),
            const NavigationDestination(
              icon: Icon(
                Icons.my_location,
                color: AppColors.black,
              ),
              label: 'Suggest',
            ),
            NavigationDestination(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedUser03,
                color: AppColors.black,
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: <Widget>[
          const HomePage(),
          const SearchPage(),
          const SurveyPage(),
          const ProfilePage(),
        ][currentIndex],
      ),
    );
  }
}
