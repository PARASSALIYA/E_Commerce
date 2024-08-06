import 'package:e_com/header.dart';

Widget listTile({required String title, icon}) {
  TextStyle textStyle = const TextStyle(
    fontSize: 16,
  );
  return ListTile(
    title: Text(
      title,
      style: textStyle,
    ),
    leading: Icon(icon),
  );
}
