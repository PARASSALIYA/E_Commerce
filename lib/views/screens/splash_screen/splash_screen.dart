import 'package:e_com/header.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.pushReplacementNamed(context, Routes.homeloadingpage);

        timer.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/gif/e_com_animation.gif',
        ),
      ),
    );
  }
}
