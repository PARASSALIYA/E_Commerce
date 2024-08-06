import 'package:e_com/header.dart';

Widget cartCard({
  required double totalPrice,
  required double gst,
  required double discount,
  required double totalPriceGstDiscount,
  required Size s,
  required Function removePrice,
  required Function addPrice,
}) {
  return Column(
    children: [
      Visibility(
        visible: cart.isEmpty,
        child: Container(
          height: s.height * 0.7,
          width: s.width,
          alignment: const Alignment(0, 0.7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/cart.png',
              ),
            ),
          ),
          child: const Text(
            ' " Your shopping cart is empty " ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.detailpage,
                arguments: cart[index],
              );
            },
            child: Container(
              height: s.height * 0.23,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 5,
                    // spreadRadius: 3,
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
                        cart[index]['thumbnail'],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${cart[index]['title']}",
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${cart[index]['price']} \$",
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
                                  " ${cart[index]['rating']} ⭐",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StatefulBuilder(
                                builder: (context, setState) => IconButton(
                                  onPressed: () {
                                    if (cart[index]['qty'] > 0) {
                                      cart[index]['qty']--;
                                      removePrice();
                                    }
                                    if (cart[index]['qty'] < 1) {
                                      cart.remove(cart[index]);
                                    }
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                              ),
                              Text("${cart[index]['qty']}"),
                              StatefulBuilder(
                                builder: (context, setState) => IconButton(
                                  onPressed: () {
                                    if (cart[index]['qty'] <
                                        cart[index]['stock']) {
                                      cart[index]['qty']++;
                                      addPrice();
                                    }
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Visibility(
                              visible:
                                  cart[index]['qty'] == cart[index]['stock'],
                              child: const Text(
                                "Out of Stock Now",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: StatefulBuilder(
                              builder: (BuildContext context,
                                      void Function(void Function())
                                          setState) =>
                                  ListTile(
                                onTap: () {
                                  cart.remove(cart[index]);

                                  setState(() {});
                                },
                                title: const Text("Remove"),
                                leading: const Icon(Icons.remove),
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
      Visibility(
        visible: cart.isNotEmpty,
        child: Container(
          height: s.height * 0.2,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-3, -3),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Price:",
                  ),
                  Text(
                    "${cart.isEmpty ? 0.00 : totalPrice.toStringAsFixed(2)}",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\n GST: ",
                  ),
                  Text(
                    "\n${cart.isEmpty ? 0.00 : gst.toStringAsFixed(2)}",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\n Discount : ",
                  ),
                  Text(
                    "\n${cart.isEmpty ? 0.00 : discount.toStringAsFixed(2)}",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\nTotalPrice:",
                  ),
                  Text(
                    "\n ${cart.isEmpty ? 0.00 : (totalPrice + gst).toStringAsFixed(2)}",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
