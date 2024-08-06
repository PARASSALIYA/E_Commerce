import 'package:e_com/header.dart';

Widget accountContainer({
  required Size s,
  required icon,
  required text,
}) {
  return Container(
    height: s.height * 0.1,
    width: s.width * 0.4,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Text(text),
      ],
    ),
  );
}
