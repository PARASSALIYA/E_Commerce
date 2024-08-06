import 'package:e_com/header.dart';

Widget homeCard({
  required context,
  required s,
  // required void setState,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: s.height * 0.2,
        width: s.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/premium-psd/black-friday-sale-social-media-post-instagram-post-web-banner-facebook-cover-template_220443-1071.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      15.height,
      const Text(
        "All Product",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      15.height,
      Expanded(
        child: GridView.builder(
          itemCount: allProduct.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            childAspectRatio: 4.4 / 7,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.detailpage,
                arguments: allProduct[index],
              );
            },
            child: BannerListTile(
              backgroundColor: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              bannerPosition: BannerPosition.topLeft,
              bannerText: "${allProduct[index]['discountPercentage']}%",
              bannerSize: 50,
              subtitle: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      allProduct[index]['thumbnail'],
                    ),
                    Text(
                      "${allProduct[index]['title']}",
                      maxLines: 1,
                    ),
                    Text(
                      "${allProduct[index]['description']}",
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${allProduct[index]['price']} \$",
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
                            " ${allProduct[index]['rating']} ⭐",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return IconButton(
                            onPressed: () {
                              favorite.contains(allProduct[index])
                                  ? favorite.remove(allProduct[index])
                                  : favorite.add(allProduct[index]);
                              setState(() {});
                              // setState;
                            },
                            icon: (favorite.contains(allProduct[index]))
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
