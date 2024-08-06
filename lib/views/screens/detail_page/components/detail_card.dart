import 'package:e_com/header.dart';
import 'package:flutter/cupertino.dart';

Widget detailCard(
    {required Size s, required data, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  1,
                  (index) => Container(
                    height: s.height * 0.5,
                    width: s.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Swiper(
                      pagination: const SwiperPagination(),
                      itemCount: data['images'].length,
                      itemBuilder: (context, index) => Image.network(
                        data['images'][index],
                        fit: BoxFit.cover,
                      ),
                      physics: const ScrollPhysics(
                        parent: ScrollPhysics(),
                      ),
                      loop: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Text(
                  " ${data['title']}",
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 24,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Text(
                  " ${data['description']}",
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Text(
                  "${data['price']} \$",
                  style: const TextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "Brand Name: ${data['brand'] ?? "NO BRAND"}",
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff46B67A),
                  ),
                  child: Center(
                    child: Text(
                      "${data['rating']}⭐",
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: s.height * 0.02,
                ),
                const Divider(),
                SizedBox(
                  height: s.height * 0.01,
                ),
                const Text(
                  "Product Details",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Text("Name : ${data['title']}"),
                Text("Brand Name: ${data['brand'] ?? "NO Brand"}"),
                Text("Price : ${data['price']}"),
                Text("Category : ${data['category']}"),
                Text("Rating : ${data['rating']} ⭐"),
                Text("Stock : ${data['stock']}"),
                Text("Discount : ${data['discountPercentage']}"),
                Text("Stock : ${data['stock']}"),
                Text("Weight: ${data['weight'] ?? "0"}"),
                Row(
                  children: [
                    const Text("Tags : "),
                    ...List.generate(
                      data['tags'].length,
                      (index) => Text(
                        " ${data['tags'][index]} ,",
                      ),
                    ),
                  ],
                ),
                ...List.generate(
                  1,
                  (index) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Dimensions: "),
                      Text("width:${data['dimensions']['width']},"),
                      Text("height: ${data['dimensions']['height']},"),
                      Text("depth: ${data['dimensions']['depth']}"),
                    ],
                  ),
                ),
                Text("Description : ${data['description']}"),
                SizedBox(
                  height: s.height * 0.01,
                ),
                const Divider(),
                const Text(
                  "Customer Ratings & Reviews",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Text(
                  " ${data['rating']} ⭐",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Review: ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ...List.generate(
                  1,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("rating: ${data['reviews'][0]['rating']}"),
                      Text("comment: ${data['reviews'][0]['comment']}"),
                      Text("date: ${data['reviews'][0]['date']}"),
                      Text(
                          "reviewerName: ${data['reviews'][0]['reviewerName']}"),
                      Text(
                          "reviewerEmail: ${data['reviews'][0]['reviewerEmail']}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("rating: ${data['reviews'][1]['rating']}"),
                      Text("comment: ${data['reviews'][1]['comment']}"),
                      Text("date: ${data['reviews'][1]['date']}"),
                      Text(
                          "reviewerName: ${data['reviews'][1]['reviewerName']}"),
                      Text(
                          "reviewerEmail: ${data['reviews'][1]['reviewerEmail']}"),
                      SizedBox(
                        height: s.height * 0.02,
                      ),
                      Text("rating: ${data['reviews'][2]['rating']}"),
                      Text("comment: ${data['reviews'][2]['comment']}"),
                      Text("date: ${data['reviews'][2]['date']}"),
                      Text(
                          "reviewerName: ${data['reviews'][2]['reviewerName']}"),
                      Text(
                          "reviewerEmail: ${data['reviews'][2]['reviewerEmail']}"),
                    ],
                  ),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: s.width * 0.05,
                    ),
                    Column(
                      children: [
                        const Icon(CupertinoIcons.return_icon),
                        Text(
                          "${data['returnPolicy']}",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: s.width * 0.09,
                    ),
                    Column(
                      children: [
                        const Icon(Icons.delivery_dining),
                        Text(
                          "${data['shippingInformation']}",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: s.height * 0.001,
                ),
              ],
            ),
          ),
        ),
        (cart.contains(data))
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: SlideAction(
                  reversed: true,
                  alignment: const Alignment(0, 0.95),
                  innerColor: Colors.black,
                  outerColor: const Color.fromRGBO(236, 236, 236, 1),
                  textColor: Colors.black,
                  text: 'remove from Cart Page !!',
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                  borderRadius: 50,
                  onSubmit: () {
                    Navigator.pushNamed(context, Routes.removefromcartpage);

                    cart.remove(data);
                  },
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(10),
                child: SlideAction(
                  alignment: const Alignment(0, 0.95),
                  innerColor: Colors.black,
                  outerColor: const Color.fromRGBO(236, 236, 236, 1),
                  textColor: Colors.black,
                  text: 'add to Cart Page !!',
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                  borderRadius: 55,
                  onSubmit: () {
                    Navigator.pushNamed(context, Routes.addedtocartpage);
                    data['qty'] = 1;
                    cart.add(data);
                  },
                ),
              ),
      ],
    ),
  );
}
