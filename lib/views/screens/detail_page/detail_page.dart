import 'package:e_com/header.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          data['title'],
        ),
        actions: [
          Align(
            alignment: Alignment.bottomRight,
            child: StatefulBuilder(
              builder: (context, setState) {
                return IconButton(
                  onPressed: () {
                    favorite.contains(data)
                        ? favorite.remove(data)
                        : favorite.add(data);
                    setState(() {});
                  },
                  icon: (favorite.contains(data))
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border,
                        ),
                );
              },
            ),
          ),
          const Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: s.width * 0.04,
          ),
        ],
      ),
      body: detailCard(s: s, data: data, context: context),
    );
  }
}
