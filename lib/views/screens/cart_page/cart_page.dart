import 'package:e_com/header.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double _totalPrice = 0;
  double _gst = 0;
  double _discount = 0;
  double totalPriceGstDiscount = 0;

  @override
  void initState() {
    addPrice();
    super.initState();
  }

  void addPrice() {
    for (var e in cart) {
      _totalPrice += e['price'];
      _discount = e['discountPercentage'];
      totalPriceGstDiscount = _totalPrice / (1 - (_discount / 100));
    }
    _gst = _totalPrice * 0.18;
  }

  void removePrice() {
    for (var e in cart) {
      _totalPrice -= e['price'];
      _discount = e['discountPercentage'];
    }
    _gst = _totalPrice * 0.18;
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Products"),
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
            width: s.width * 0.06,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: cartCard(
          totalPrice: _totalPrice,
          gst: _gst,
          discount: _discount,
          totalPriceGstDiscount: totalPriceGstDiscount,
          s: s,
          removePrice: removePrice,
          addPrice: addPrice,
        ),
      ),
    );
  }
}
