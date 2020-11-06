import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tatto_get/models/categories.dart';

class Artista {
  int idArtista;
  String estudio;
  String nome;
  String endereco;
  int telefone;
  String fotoUrl;
  List<Categories> categories;

  Artista(
      {this.idArtista,
      this.categories,
      this.estudio,
      this.nome,
      this.endereco,
      this.telefone,
      this.fotoUrl});

  Artista.fromJson(Map<String, dynamic> json) {
    idArtista = json['idArtista'];
    estudio = json['estudio'];
    nome = json['nome'];
    endereco = json['endereco'];
    telefone = json['telefone'];
    fotoUrl = json['foto'];
    categories = json['categories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idArtista'] = this.idArtista;
    data['estudio'] = this.estudio;
    data['nome'] = this.nome;
    data['endereco'] = this.endereco;
    data['telefone'] = this.telefone;
    data['categories'] = this.categories;
  }
}

List<Artista> listArtistas = [
  Artista(
    estudio: 'Estúdio 1',
    nome: 'Jhony Tatto',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    fotoUrl:
        'https://cdn.icon-icons.com/icons2/1506/PNG/512/emblemok_103757.png',
    categories: listCategories,
  ),
  Artista(
    estudio: 'Estúdio 2',
    nome: 'TEste',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    fotoUrl:
        'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2016/05/Captura-de-Tela-2016-05-11-a--s-11.24.54.png',
    categories: listCategories,
  ),
  Artista(
    estudio: 'Estúdio 3',
    nome: 'Estúdio 4',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    fotoUrl: 'https://image.flaticon.com/icons/png/512/896/896866.png',
    categories: listCategories,
  ),
  Artista(
    estudio: 'Estúdio 1',
    nome: 'Jhony Tatto',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    fotoUrl:
        'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2016/05/Captura-de-Tela-2016-05-11-a--s-11.24.54.png',
    categories: listCategories,
  ),
];
