class Categories {
  int idCategories;
  String name;

  Categories({this.idCategories, this.name});

  Categories.fromJson(Map<String, dynamic> json) {
    idCategories = json['idCategories'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCategories'] = this.idCategories;
    data['name'] = this.name;
    return data;
  }
}

List<Categories> listCategories = [
  Categories(
    idCategories: 1,
    name: 'OldSchool',
  ),
  Categories(
    idCategories: 2,
    name: 'Realismo',
  ),
  Categories(
    idCategories: 1,
    name: 'Fineline',
  ),
  Categories(
    idCategories: 1,
    name: 'Aquarela',
  ),
  Categories(
    idCategories: 1,
    name: 'Pontilhismo',
  ),
];
