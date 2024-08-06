import 'package:e_com/header.dart';

class HomeLoadingPage extends StatefulWidget {
  const HomeLoadingPage({super.key});

  @override
  State<HomeLoadingPage> createState() => _HomeLoadingPageState();
}

class _HomeLoadingPageState extends State<HomeLoadingPage> {
  void initState() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.pushReplacementNamed(context, Routes.bottomnavbar);
        timer.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CardLoading(
              height: s.height * 0.2,
              width: s.width * 0.95,
              borderRadius: BorderRadius.circular(10),
              margin: const EdgeInsets.all(5),
              cardLoadingTheme: CardLoadingTheme(
                colorOne: Colors.grey.shade100,
                colorTwo: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: allProduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 4 / 6,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => CardLoading(
                  height: s.height * 0.2,
                  width: s.width * 0.95,
                  borderRadius: BorderRadius.circular(10),
                  margin: const EdgeInsets.all(5),
                  cardLoadingTheme: CardLoadingTheme(
                    colorOne: Colors.grey.shade100,
                    colorTwo: Colors.grey.shade300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* // body: CustomScrollView(
      //   slivers: [
      //     SliverPadding(
      //       padding: const EdgeInsets.all(8),
      //       sliver: SliverList(
      //         delegate: SliverChildBuilderDelegate(
      //           childCount: 1,
      //           (context, index) {
      //             return Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 //banner
      //                 CardLoading(
      //                   height: s.height * 0.2,
      //                   width: s.width * 0.95,
      //                   borderRadius: BorderRadius.circular(10),
      //                   margin: const EdgeInsets.all(5),
      //                   cardLoadingTheme: CardLoadingTheme(
      //                     colorOne: Colors.grey.shade100,
      //                     colorTwo: Colors.grey.shade300,
      //                   ),
      //                 ),
      //                 //  // category[images][name]
      //                 const SizedBox(
      //                   height: 30,
      //                 ),
      //                 //Text
      //                 SingleChildScrollView(
      //                   scrollDirection: Axis.horizontal,
      //                   child: Row(
      //                     children: [
      //                       ...List.generate(
      //                         categoryimage.length,
      //                         (index) => CardLoading(
      //                           height: s.height * 0.1,
      //                           width: s.width * 0.2,
      //                           borderRadius: BorderRadius.circular(10),
      //                           margin: const EdgeInsets.all(5),
      //                           cardLoadingTheme: CardLoadingTheme(
      //                             colorOne: Colors.grey.shade100,
      //                             colorTwo: Colors.grey.shade300,
      //                           ),
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 const SizedBox(
      //                   height: 30,
      //                 ),
      //                 ...List.generate(
      //                   product.length ~/ 2,
      //                   (index) => Row(
      //                     children: [
      //                       CardLoading(
      //                         height: s.height * 0.35,
      //                         width: s.width * 0.45,
      //                         borderRadius: const BorderRadius.all(
      //                           Radius.circular(15),
      //                         ),
      //                         margin: const EdgeInsets.all(5),
      //                         cardLoadingTheme: CardLoadingTheme(
      //                           colorOne: Colors.grey.shade100,
      //                           colorTwo: Colors.grey.shade300,
      //                         ),
      //                       ),
      //                       CardLoading(
      //                         height: s.height * 0.35,
      //                         width: s.width * 0.45,
      //                         borderRadius: const BorderRadius.all(
      //                           Radius.circular(15),
      //                         ),
      //                         margin: const EdgeInsets.all(5),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             );
      //           },
      //         ),
      //       ),
      //     ),
      //   ],
      // ),*/
