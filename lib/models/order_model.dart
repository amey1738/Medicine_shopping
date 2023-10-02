class OrderModel {
  OrderModel({
      num? id, 
      num? items, 
      String? date, 
      String? status, 
      List<OrderItems>? orderItems,}){
    _id = id;
    _items = items;
    _date = date;
    _status = status;
    _orderItems = orderItems;
}

  OrderModel.fromJson(dynamic json) {
    _id = json['id'];
    _items = json['items'];
    _date = json['date'];
    _status = json['status'];
    if (json['orderItems'] != null) {
      _orderItems = [];
      json['orderItems'].forEach((v) {
        _orderItems?.add(OrderItems.fromJson(v));
      });
    }
  }
  num? _id;
  num? _items;
  String? _date;
  String? _status;
  List<OrderItems>? _orderItems;
OrderModel copyWith({  num? id,
  num? items,
  String? date,
  String? status,
  List<OrderItems>? orderItems,
}) => OrderModel(  id: id ?? _id,
  items: items ?? _items,
  date: date ?? _date,
  status: status ?? _status,
  orderItems: orderItems ?? _orderItems,
);
  num? get id => _id;
  num? get items => _items;
  String? get date => _date;
  String? get status => _status;
  List<OrderItems>? get orderItems => _orderItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['items'] = _items;
    map['date'] = _date;
    map['status'] = _status;
    if (_orderItems != null) {
      map['orderItems'] = _orderItems?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class OrderItems {
  OrderItems({
      num? id, 
      String? name, 
      num? totalPrice, 
      num? qty, 
      num? unitPrice, 
      String? imgLink,}){
    _id = id;
    _name = name;
    _totalPrice = totalPrice;
    _qty = qty;
    _unitPrice = unitPrice;
    _imgLink = imgLink;
}

  OrderItems.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _totalPrice = json['totalPrice'];
    _qty = json['qty'];
    _unitPrice = json['unitPrice'];
    _imgLink = json['imgLink'];
  }
  num? _id;
  String? _name;
  num? _totalPrice;
  num? _qty;
  num? _unitPrice;
  String? _imgLink;
OrderItems copyWith({  num? id,
  String? name,
  num? totalPrice,
  num? qty,
  num? unitPrice,
  String? imgLink,
}) => OrderItems(  id: id ?? _id,
  name: name ?? _name,
  totalPrice: totalPrice ?? _totalPrice,
  qty: qty ?? _qty,
  unitPrice: unitPrice ?? _unitPrice,
  imgLink: imgLink ?? _imgLink,
);
  num? get id => _id;
  String? get name => _name;
  num? get totalPrice => _totalPrice;
  num? get qty => _qty;
  num? get unitPrice => _unitPrice;
  String? get imgLink => _imgLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['totalPrice'] = _totalPrice;
    map['qty'] = _qty;
    map['unitPrice'] = _unitPrice;
    map['imgLink'] = _imgLink;
    return map;
  }

}