import 'package:e_com/header.dart';
import 'package:flutter/cupertino.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              accountDetail(s: s),
              SizedBox(
                height: s.height * 0.03,
              ),
              Row(
                children: [
                  accountContainer(s: s, icon: Icons.call, text: "Help Center"),
                  accountContainer(
                      s: s, icon: Icons.language, text: "Change Language"),
                ],
              ),
              SizedBox(
                height: s.height * 0.03,
              ),
              const Text(
                "My Payments",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: s.height * 0.02,
              ),
              listTile(
                title: "Bank & UPI Details",
                icon: Icons.mobile_screen_share,
              ),
              const Divider(),
              listTile(
                title: "  Payment & Refund",
                icon: Icons.wallet,
              ),
              SizedBox(
                height: s.height * 0.02,
              ),
              const Text(
                "My Activity",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: s.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.favoritepage);
                },
                child: listTile(
                  title: "Wishlisted Products",
                  icon: CupertinoIcons.heart_fill,
                ),
              ),
              const Divider(),
              listTile(
                title: "Share Product",
                icon: Icons.share,
              ),
              const Divider(),
              listTile(
                title: "Followed Shops",
                icon: Icons.storefront,
              ),
              SizedBox(
                height: s.height * 0.02,
              ),
              const Text(
                "Other",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              listTile(
                title: "Refer & Earn",
                icon: CupertinoIcons.money_dollar_circle_fill,
              ),
              const Divider(),
              listTile(
                title: "Refer & Earn",
                icon: CupertinoIcons.briefcase_fill,
              ),
              const Divider(),
              listTile(
                title: "Setting",
                icon: Icons.settings,
              ),
              const Divider(),
              listTile(
                title: "Rate App",
                icon: Icons.star,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
