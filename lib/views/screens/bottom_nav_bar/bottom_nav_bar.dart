import 'package:e_com/header.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _SelectedIndex = 0;
  List pages = [
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_SelectedIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _SelectedIndex,
        backgroundColor: Colors.white,
        showElevation: false,
        animationCurve: Curves.bounceIn,
        animationDuration: const Duration(
          milliseconds: 400,
        ),
        onItemSelected: (int value) {
          setState(
            () {
              _SelectedIndex = value;
            },
          );
        },
        items: [
          FlashyTabBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              "home",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: const Text(
              "search",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            title: const Text(
              "cart",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.person_sharp,
              color: Colors.black,
            ),
            title: const Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
