import 'package:e_com/header.dart';

void main() {
  runApp(
    const My_E_Com_App(),
  );
}

class My_E_Com_App extends StatelessWidget {
  const My_E_Com_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splashscreen: (context) => const SplashScreen(),
        Routes.homeloadingpage: (context) => const HomeLoadingPage(),
        Routes.homepage: (context) => const HomePage(),
        Routes.favoritepage: (context) => const FavoritePage(),
        Routes.addedtocartpage: (context) => const AddedToCartPage(),
        Routes.removefromcartpage: (context) => const RemoveFromCartPage(),
        Routes.detailpage: (context) => const DetailPage(),
        Routes.cartpage: (context) => const CartPage(),
        Routes.categorypage: (context) => const CategoryPage(),
        Routes.profilepage: (context) => const AccountPage(),
        Routes.bottomnavbar: (context) => const BottomNavBar(),
        Routes.searchpage: (context) => const SearchPage(),
      },
    );
  }
}
