import 'package:flutter/material.dart';
import 'package:tatto_get/consts.dart';
import 'package:tatto_get/models/categories.dart';
import 'package:tatto_get/models/artista.dart';
import 'package:tatto_get/screens/componentes/list_categories.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({
    Key key,
    this.artista,
  }) : super(key: key);

  final Artista artista;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(artista.fotoUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artista.estudio,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: kColorTwo),
                    ),
                    SizedBox(
                      height: 2,
                      child: Container(color: kColorOne),
                    ),
                    Text(
                      artista.nome,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      'Endereço:' + artista.endereco,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Spacer(),
                    ListCategories(
                      listCategories: artista.categories,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
