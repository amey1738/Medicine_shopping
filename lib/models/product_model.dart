class ProductModel {
  ProductModel({
      num? id, 
      String? name, 
      num? catId, 
      String? desc, 
      String? otherInfo, 
      num? mrp, 
      num? price, 
      List<Images>? images, 
      num? vendorId, 
      String? vendorName,}){
    _id = id;
    _name = name;
    _catId = catId;
    _desc = desc;
    _otherInfo = otherInfo;
    _mrp = mrp;
    _price = price;
    _images = images;
    _vendorId = vendorId;
    _vendorName = vendorName;
}

  ProductModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _catId = json['catId'];
    _desc = json['desc'];
    _otherInfo = json['otherInfo'];
    _mrp = json['mrp'];
    _price = json['price'];
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _vendorId = json['vendorId'];
    _vendorName = json['vendorName'];
  }
  num? _id;
  String? _name;
  num? _catId;
  String? _desc;
  String? _otherInfo;
  num? _mrp;
  num? _price;
  List<Images>? _images;
  num? _vendorId;
  String? _vendorName;
ProductModel copyWith({  num? id,
  String? name,
  num? catId,
  String? desc,
  String? otherInfo,
  num? mrp,
  num? price,
  List<Images>? images,
  num? vendorId,
  String? vendorName,
}) => ProductModel(  id: id ?? _id,
  name: name ?? _name,
  catId: catId ?? _catId,
  desc: desc ?? _desc,
  otherInfo: otherInfo ?? _otherInfo,
  mrp: mrp ?? _mrp,
  price: price ?? _price,
  images: images ?? _images,
  vendorId: vendorId ?? _vendorId,
  vendorName: vendorName ?? _vendorName,
);
  num? get id => _id;
  String? get name => _name;
  num? get catId => _catId;
  String? get desc => _desc;
  String? get otherInfo => _otherInfo;
  num? get mrp => _mrp;
  num? get price => _price;
  List<Images>? get images => _images;
  num? get vendorId => _vendorId;
  String? get vendorName => _vendorName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['catId'] = _catId;
    map['desc'] = _desc;
    map['otherInfo'] = _otherInfo;
    map['mrp'] = _mrp;
    map['price'] = _price;
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    map['vendorId'] = _vendorId;
    map['vendorName'] = _vendorName;
    return map;
  }

}

class Images {
  Images({
      num? id, 
      String? imgLink,}){
    _id = id;
    _imgLink = imgLink;
}

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _imgLink = json['imgLink'];
  }
  num? _id;
  String? _imgLink;
Images copyWith({  num? id,
  String? imgLink,
}) => Images(  id: id ?? _id,
  imgLink: imgLink ?? _imgLink,
);
  num? get id => _id;
  String? get imgLink => _imgLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['imgLink'] = _imgLink;
    return map;
  }

}