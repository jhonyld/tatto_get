import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tatto_get/consts.dart';
import 'package:tatto_get/controllers/home_controller.dart';
import 'package:tatto_get/models/categories.dart';
import 'package:tatto_get/models/artista.dart';
import 'package:tatto_get/screens/componentes/list_categories.dart';
import 'package:tatto_get/screens/home/components/artist_card.dart';
import 'package:tatto_get/screens/home/components/search_custom.dart';
import 'package:tatto_get/services/firestore_service.dart';

class Body extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    homeController.listArtist = listArtistas;
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
                    //listArtista = FirestoreService().getArtista();
                  })
            ],
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: homeController.listArtist.length,
              itemBuilder: (context, index) => ArtistCard(
                artista: homeController.listArtist[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
