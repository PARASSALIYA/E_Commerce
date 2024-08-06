import 'package:e_com/header.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // dynamic searchCategory;
  String searchCategory = "All";
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    List searchCategoryList =
        allProduct.where((e) => e['category'] == searchCategory).toList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            TextFormField(
              onFieldSubmitted: (val) {
                searchCategory = val;
                setState(() {});
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: const Icon(Icons.search),
                label: const Text('search'),
              ),
              keyboardType: TextInputType.name,
            ),
            Visibility(
              visible: searchCategoryList.isEmpty,
              child: Container(
                height: s.height * 0.7,
                width: s.width,
                alignment: const Alignment(0, 0.7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/Search.png',
                    ),
                  ),
                ),
                child: const Text(
                  " No Search History",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 7,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: searchCategoryList.length,
                itemBuilder: (context, index) => Container(
                  color: Colors.black12,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.detailpage,
                        arguments: searchCategoryList[index],
                      );
                    },
                    child: BannerListTile(
                      backgroundColor: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      bannerPosition: BannerPosition.topLeft,
                      bannerText:
                          "${searchCategoryList[index]['discountPercentage']}%",
                      bannerSize: 50,
                      subtitle: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                              searchCategoryList[index]['thumbnail'],
                            ),
                            Text(
                              "${searchCategoryList[index]['title']}",
                              maxLines: 1,
                            ),
                            Text(
                              "${searchCategoryList[index]['description']}",
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
                                  "${searchCategoryList[index]['price']} \$",
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
                                    " ${searchCategoryList[index]['rating']} ⭐",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
