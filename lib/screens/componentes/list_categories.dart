import 'package:flutter/material.dart';
import 'package:tatto_get/consts.dart';
import 'package:tatto_get/models/categories.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({
    Key key,
    this.listCategories,
  }) : super(key: key);

  final List<Categories> listCategories;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 20,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 3,
          ),
          //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: listCategories.length,
          itemBuilder: (context, index) => CategorieCard(
            categorie: listCategories[index],
          ),
        ),
      ),
    );
  }
}

class CategorieCard extends StatelessWidget {
  const CategorieCard({
    Key key,
    this.categorie,
  }) : super(key: key);

  final Categories categorie;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: kColorTwo,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          categorie.name,
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }
}
