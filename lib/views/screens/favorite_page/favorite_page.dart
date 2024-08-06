import 'package:e_com/header.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Page"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.cartpage);
            },
            child: const Icon(Icons.shopping_cart),
          ),
          SizedBox(
            width: s.width * 0.06,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: favoriteCard(
          s: s,
          // setState: setState(() {}),
        ),
      ),
    );
  }
}
