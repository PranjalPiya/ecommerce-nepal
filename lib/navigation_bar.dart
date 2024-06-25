import 'package:ecommerce_nepal/core/constant/colors.dart';
import 'package:ecommerce_nepal/presentation/favorite/screens/favorite_screen.dart';
import 'package:ecommerce_nepal/presentation/home/screens/home_screens.dart';
import 'package:ecommerce_nepal/presentation/order/screens/order_screen.dart';
import 'package:ecommerce_nepal/presentation/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> navigationWidgets = [
    const HomeScreens(),
    const OrderScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: navigationWidgets.elementAt(selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              elevation: 5,
              iconSize: 30,
              selectedItemColor: primaryColor,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.delivery_dining_outlined,
                  ),
                  label: 'My Order',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outline,
                  ),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  label: 'My Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
