import 'package:get/get.dart';
import 'package:tatto_get/models/artista.dart';

class HomeController extends GetxController {
  var listArtist = List<Artista>().obs;

  onSearchTextChanged(String text) {
    listArtist = listArtist
        .where((a) => (a.nome.toLowerCase().contains(text.toLowerCase())));

    print(listArtist);
  }
}
