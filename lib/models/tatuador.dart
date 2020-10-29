import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tatto_get/models/categories.dart';

class Tatuador {
  String estudio;
  String nome;
  String endereco;
  int telefone;
  String fotoUrl;
  List<Categories> categories;

  Tatuador(
      {this.categories,
      this.estudio,
      this.nome,
      this.endereco,
      this.telefone,
      this.fotoUrl});

  Tatuador.fromJson(Map<String, dynamic> json) {
    estudio = json['estudio'];
    nome = json['nome'];
    endereco = json['endereco'];
    telefone = json['telefone'];
    fotoUrl = json['foto'];
  }

  // factory Tatuador.fromJson(Map<String, dynamic> json) {
  //   return Tatuador(
  //       estudio: json['estudio'],
  //       nome: json['nome'],
  //       endereco: json['endereco'],
  //       telefone: json['telefone']);
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['estudio'] = this.estudio;
    data['nome'] = this.nome;
    data['endereco'] = this.endereco;
    data['telefone'] = this.telefone;
  }
}

List<Tatuador> listTatuador = [
  Tatuador(
    estudio: 'Estúdio 1',
    nome: 'Jhony Tatto',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    //foto: 'assets/images/tatuador1.jpg',
    categories: listCategories,
  ),
  Tatuador(
    estudio: 'Estúdio 1',
    nome: 'Jhony Tatto',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    //foto: 'assets/images/tatuador1.jpg',
    categories: listCategories,
  ),
  Tatuador(
    estudio: 'Estúdio 1',
    nome: 'Jhony Tatto',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    // foto: 'assets/images/tatuador1.jpg',
    categories: listCategories,
  ),
  Tatuador(
    estudio: 'Estúdio 1',
    nome: 'Jhony Tatto',
    endereco: 'Rua Carlos de campos,625 - ap 35',
    telefone: 16997457253,
    //foto: 'assets/images/tatuador1.jpg',
    categories: listCategories,
  ),
];
