class SliderModel {
  SliderModel({
      num? id, 
      String? img, 
      num? type,}){
    _id = id;
    _img = img;
    _type = type;
}

  SliderModel.fromJson(dynamic json) {
    _id = json['id'];
    _img = json['img '];
    _type = json['type'];
  }
  num? _id;
  String? _img;
  num? _type;
SliderModel copyWith({  num? id,
  String? img,
  num? type,
}) => SliderModel(  id: id ?? _id,
  img: img ?? _img,
  type: type ?? _type,
);
  num? get id => _id;
  String? get img => _img;
  num? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['img '] = _img;
    map['type'] = _type;
    return map;
  }

}