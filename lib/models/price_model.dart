/// id : 2
/// name : "asdsa"
/// price : 200.00
/// mrp : 200.00

class PriceModel {
  PriceModel({
      num? id, 
      String? name, 
      num? price, 
      num? mrp,}){
    _id = id;
    _name = name;
    _price = price;
    _mrp = mrp;
}

  PriceModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _mrp = json['mrp'];
  }
  num? _id;
  String? _name;
  num? _price;
  num? _mrp;
PriceModel copyWith({  num? id,
  String? name,
  num? price,
  num? mrp,
}) => PriceModel(  id: id ?? _id,
  name: name ?? _name,
  price: price ?? _price,
  mrp: mrp ?? _mrp,
);
  num? get id => _id;
  String? get name => _name;
  num? get price => _price;
  num? get mrp => _mrp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['price'] = _price;
    map['mrp'] = _mrp;
    return map;
  }

}