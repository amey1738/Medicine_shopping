class CategoryModel {
  CategoryModel({
      num? id, 
      String? name, 
      String? imgLink,}){
    _id = id;
    _name = name;
    _imgLink = imgLink;
}

  CategoryModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imgLink = json['imgLink'];
  }
  num? _id;
  String? _name;
  String? _imgLink;
CategoryModel copyWith({  num? id,
  String? name,
  String? imgLink,
}) => CategoryModel(  id: id ?? _id,
  name: name ?? _name,
  imgLink: imgLink ?? _imgLink,
);
  num? get id => _id;
  String? get name => _name;
  String? get imgLink => _imgLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['imgLink'] = _imgLink;
    return map;
  }

}