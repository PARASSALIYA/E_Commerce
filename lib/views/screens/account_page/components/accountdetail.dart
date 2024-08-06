import 'package:e_com/header.dart';

Widget accountDetail({required Size s}) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: CircleAvatar(
          radius: s.height * 0.045,
          foregroundImage: const NetworkImage(
            "https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png",
          ),
        ),
      ),
      SizedBox(
        width: s.width * 0.1,
      ),
      Expanded(
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: s.height * 0.05,
              width: s.width * 0.3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text("Sign In"),
            ),
            SizedBox(
              height: s.height * 0.01,
            ),
            const Text(" View and update your profile details"),
          ],
        ),
      ),
    ],
  );
}
