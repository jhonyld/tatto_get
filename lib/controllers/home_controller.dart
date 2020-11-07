import 'package:get/get.dart';
import 'package:tatto_get/models/artista.dart';

class HomeController extends GetxController {
  var listArtistFiltrado = List<Artista>().obs;

  void onInit() {
    super.onInit();
    fetchArtists();
  }

  void fetchArtists() {
    listArtistFiltrado.value = listaGeral;
  }

  onSearchTextChanged(String text) {
    List<Artista> listaArtista = listaGeral;
    listaArtista = listaArtista
        .where((a) => (a.nome.toLowerCase().contains(text.toLowerCase())))
        .toList();

    listArtistFiltrado.value = listaArtista;
  }
}
