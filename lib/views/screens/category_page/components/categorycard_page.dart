import 'package:e_com/header.dart';

Widget categoryCard({
  required List filterList,
  // required void setState,
}) {
  return GridView.builder(
    itemCount: filterList.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      childAspectRatio: 4 / 6,
      crossAxisSpacing: 10,
    ),
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.detailpage,
            arguments: filterList[index],
          );
        },
        child: Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  filterList[index]['thumbnail'],
                ),
                Text(
                  "${filterList[index]['title']}",
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${filterList[index]['price']} \$",
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
                        " ${filterList[index]['rating']} ⭐",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                StatefulBuilder(
                  builder: (context, setState) => Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {
                        favorite.contains(filterList[index])
                            ? favorite.remove(filterList[index])
                            : favorite.add(filterList[index]);

                        setState(() {});
                        // setState;
                      },
                      icon: (favorite.contains(filterList[index]))
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_border,
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
