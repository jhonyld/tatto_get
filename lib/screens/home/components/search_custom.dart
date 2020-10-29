import 'package:flutter/material.dart';

class SearchCustom extends StatelessWidget {
  const SearchCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        width: 200,
        alignment: Alignment.centerLeft,
        child: TextField(
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Encontre seu tatuador",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.5),
        ),
        // color: Colors.white,
      ),
    );
  }
}
