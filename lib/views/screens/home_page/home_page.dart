import 'package:e_com/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        timer.cancel();
      },
    );
    super.initState();
  }

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: drawer(
        s: s,
        context: context,
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.favoritepage);
            },
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: s.width * 0.02,
          ),
          const Icon(
            Icons.light_mode,
            size: 25,
          ),
          SizedBox(
            width: s.width * 0.06,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: homeCard(
          context: context,
          s: s,
          // setState: setState(() {}),
        ),
      ),
    );
  }
}
