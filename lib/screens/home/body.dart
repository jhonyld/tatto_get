import 'package:flutter/material.dart';
import 'package:tatto_get/consts.dart';
import 'package:tatto_get/models/categories.dart';
import 'package:tatto_get/models/tatuador.dart';
import 'package:tatto_get/screens/componentes/list_categories.dart';
import 'package:tatto_get/screens/home/components/artist_card.dart';
import 'package:tatto_get/screens/home/components/search_custom.dart';
import 'package:tatto_get/services/firestore_service.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Tatuador> listTatuador;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SearchCustom(),
              IconButton(
                  icon: Icon(Icons.my_location),
                  color: Colors.white,
                  onPressed: () {
                    //listTatuador = FirestoreService().getTatuador();
                  })
            ],
          ),
          Flexible(
            child: StreamBuilder(
                stream: FirestoreService().getTatuador(),
                initialData: [],
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return LinearProgressIndicator();
                    case ConnectionState.active:

                    case ConnectionState.done:
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 1,
                        itemBuilder: (context, index) => ArtistCard(
                          tatuador: snapshot.data[index],
                        ),
                      );
                  }
                }),
          )
        ],
      ),
    );
  }
}
