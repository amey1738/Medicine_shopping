class BrandModel {
  BrandModel({
      num? id, 
      String? name, 
      String? img, 
      num? type,}){
    _id = id;
    _name = name;
    _img = img;
    _type = type;
}

  BrandModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _img = json['img'];
    _type = json['type'];
  }

  num? _id;
  String? _name;
  String? _img;
  num? _type;
BrandModel copyWith({  num? id,
  String? name,
  String? img,
  num? type,
}) => BrandModel(  id: id ?? _id,
  name: name ?? _name,
  img: img ?? _img,
  type: type ?? _type,
);
  num? get id => _id;
  String? get name => _name;
  String? get img => _img;
  num? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['img'] = _img;
    map['type'] = _type;
    return map;
  }

}