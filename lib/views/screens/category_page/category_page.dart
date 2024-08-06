import 'package:e_com/header.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    String category = ModalRoute.of(context)!.settings.arguments as String;
    List filterList =
        allProduct.where((e) => e['category'] == category).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.toString().replaceFirst(
                category[0],
                category[0].toUpperCase(),
              ),
        ),
      ),
      body: categoryCard(
        filterList: filterList,
        // setState: setState(() {}),
      ),
    );
  }
}
