/// id : 1
/// name : "ame"
/// tag : "home"
/// line1 : "address line 1"
/// line2 : "address line 2"
/// city : "mumbai"
/// state : "maharashtra"
/// pincode : "200402"
/// isSelected : true

class AddressModel {
  AddressModel({
      num? id, 
      String? name, 
      String? tag, 
      String? line1, 
      String? line2, 
      String? city, 
      String? state, 
      String? pincode, 
      bool? isSelected,}){
    _id = id;
    _name = name;
    _tag = tag;
    _line1 = line1;
    _line2 = line2;
    _city = city;
    _state = state;
    _pincode = pincode;
    _isSelected = isSelected;
}

  AddressModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _tag = json['tag'];
    _line1 = json['line1'];
    _line2 = json['line2'];
    _city = json['city'];
    _state = json['state'];
    _pincode = json['pincode'];
    _isSelected = json['isSelected'];
  }
  num? _id;
  String? _name;
  String? _tag;
  String? _line1;
  String? _line2;
  String? _city;
  String? _state;
  String? _pincode;
  bool? _isSelected;
AddressModel copyWith({  num? id,
  String? name,
  String? tag,
  String? line1,
  String? line2,
  String? city,
  String? state,
  String? pincode,
  bool? isSelected,
}) => AddressModel(  id: id ?? _id,
  name: name ?? _name,
  tag: tag ?? _tag,
  line1: line1 ?? _line1,
  line2: line2 ?? _line2,
  city: city ?? _city,
  state: state ?? _state,
  pincode: pincode ?? _pincode,
  isSelected: isSelected ?? _isSelected,
);
  num? get id => _id;
  String? get name => _name;
  String? get tag => _tag;
  String? get line1 => _line1;
  String? get line2 => _line2;
  String? get city => _city;
  String? get state => _state;
  String? get pincode => _pincode;
  bool? get isSelected => _isSelected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['tag'] = _tag;
    map['line1'] = _line1;
    map['line2'] = _line2;
    map['city'] = _city;
    map['state'] = _state;
    map['pincode'] = _pincode;
    map['isSelected'] = _isSelected;
    return map;
  }

}