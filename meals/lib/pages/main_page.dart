import 'package:flutter/material.dart';
import '../widgets/categories_widget.dart';
import '../models/categories.dart';
import '../widgets/category_card.dart';

class MainPageState extends State<MainPage> {
  int tabIndex = 0;
  MainPageState({super.key});

  Widget categoryBuilder(BuildContext context, int index) {
    debugPrint('index: $index/${kCategories.length}');
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text(kCategories[index].title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabIndex,
          onTap: (index) {
            setState(() {
              tabIndex = index;
            });
          },//DEIXAR ESSA PARTE AQUI
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).indicatorColor,
          unselectedItemColor: Theme.of(context).disabledColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categorias'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favoritos'),
          ]),
      body: const CategoriesWidget(),
    );
  }
}
