import 'package:e_com/header.dart';

class RemoveFromCartPage extends StatefulWidget {
  const RemoveFromCartPage({super.key});

  @override
  State<RemoveFromCartPage> createState() => _RemoveFromCartPageState();
}

class _RemoveFromCartPageState extends State<RemoveFromCartPage> {
  void initState() {
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.bottomnavbar,
          (route) => false,
        );
        timer.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(77, 155, 97, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 1,
              child: Image.asset(
                'assets/gif/tick_animation.gif',
              ),
            ),
            const Text(
              'Removed from Cart',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            const Text(
              'Item is removed from cart ',
              style: TextStyle(
                fontFamily: 'OpenSans',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
