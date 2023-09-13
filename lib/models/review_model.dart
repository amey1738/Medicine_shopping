class ReviewModel {
  ReviewModel({
      num? id, 
      num? prodId, 
      String? userName, 
      num? userId, 
      String? imgLink, 
      String? review, 
      num? likes, 
      num? rating,}){
    _id = id;
    _prodId = prodId;
    _userName = userName;
    _userId = userId;
    _imgLink = imgLink;
    _review = review;
    _likes = likes;
    _rating = rating;
}

  ReviewModel.fromJson(dynamic json) {
    _id = json['id'];
    _prodId = json['prodId'];
    _userName = json['userName'];
    _userId = json['userId'];
    _imgLink = json['imgLink'];
    _review = json['review'];
    _likes = json['likes'];
    _rating = json['rating'];
  }
  num? _id;
  num? _prodId;
  String? _userName;
  num? _userId;
  String? _imgLink;
  String? _review;
  num? _likes;
  num? _rating;
ReviewModel copyWith({  num? id,
  num? prodId,
  String? userName,
  num? userId,
  String? imgLink,
  String? review,
  num? likes,
  num? rating,
}) => ReviewModel(  id: id ?? _id,
  prodId: prodId ?? _prodId,
  userName: userName ?? _userName,
  userId: userId ?? _userId,
  imgLink: imgLink ?? _imgLink,
  review: review ?? _review,
  likes: likes ?? _likes,
  rating: rating ?? _rating,
);
  num? get id => _id;
  num? get prodId => _prodId;
  String? get userName => _userName;
  num? get userId => _userId;
  String? get imgLink => _imgLink;
  String? get review => _review;
  num? get likes => _likes;
  num? get rating => _rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['prodId'] = _prodId;
    map['userName'] = _userName;
    map['userId'] = _userId;
    map['imgLink'] = _imgLink;
    map['review'] = _review;
    map['likes'] = _likes;
    map['rating'] = _rating;
    return map;
  }

}