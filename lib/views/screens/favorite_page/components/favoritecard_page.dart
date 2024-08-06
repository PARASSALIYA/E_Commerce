import 'package:e_com/header.dart';

Widget favoriteCard({
  required Size s,
}) {
  return Column(
    children: [
      Visibility(
        visible: favorite.isEmpty,
        child: Container(
          height: s.height * 0.7,
          width: s.width,
          alignment: const Alignment(0, 0.7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/favorite.png',
              ),
            ),
          ),
          child: const Text(
            " No products in your favorite list",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: favorite.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.detailpage,
                arguments: favorite[index],
              );
            },
            child: Container(
              height: 160,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Image.network(
                        favorite[index]['thumbnail'],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${favorite[index]['title']}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${favorite[index]['description']}",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${favorite[index]['price']} \$",
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  " ${favorite[index]['rating']} ⭐",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          StatefulBuilder(
                            builder: (context, setState) => Align(
                              alignment: const Alignment(0.9, 0),
                              child: GestureDetector(
                                onTap: () {
                                  favorite.remove(favorite[index]);
                                  setState(() {});
                                  // setState;
                                },
                                child: const Icon(Icons.delete),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
