import 'package:e_com/header.dart';
import 'package:flutter/cupertino.dart';

Widget drawer({required Size s, required BuildContext context}) {
  return Drawer(
    surfaceTintColor: Colors.black,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoModalPopupRoute(
                builder: (context) => const AccountPage(),
              ),
            );
          },
          child: UserAccountsDrawerHeader(
            accountName: const Text("E-commerceApp"),
            accountEmail: const Text("e-commerceApp@gmail.com"),
            currentAccountPicture: Image.network(
              "https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png",
            ),
          ),
        ),
        10.height,
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "All Category",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Row(
              children: [
                Column(
                  children: [
                    ...categoryimage.map(
                      (e) => Container(
                        height: s.height * 0.1,
                        width: s.width * 0.15,
                        alignment: Alignment.bottomCenter,
                        margin: const EdgeInsets.only(left: 15, right: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              e,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ...allCategory.map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            Routes.categorypage,
                            arguments: e,
                          );
                        },
                        child: Container(
                          height: s.height * 0.1,
                          width: s.width * 0.2,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 15, right: 5),
                          child: Text(
                            e.toString().replaceFirst(
                                  e[0],
                                  e[0].toUpperCase(),
                                ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
