class OnboardModel {
  OnboardModel({
      String? image, 
      String? title, 
      String? desc,}){
    _image = image;
    _title = title;
    _desc = desc;
}

  OnboardModel.fromJson(dynamic json) {
    _image = json['image'];
    _title = json['title'];
    _desc = json['desc'];
  }
  String? _image;
  String? _title;
  String? _desc;
OnboardModel copyWith({  String? image,
  String? title,
  String? desc,
}) => OnboardModel(  image: image ?? _image,
  title: title ?? _title,
  desc: desc ?? _desc,
);
  String? get image => _image;
  String? get title => _title;
  String? get desc => _desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['title'] = _title;
    map['desc'] = _desc;
    return map;
  }

}