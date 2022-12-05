class Post {
  String? name;
  String? img;
  String? address;
  String? price;
  String? id;

  Post({this.name, this.img, this.address, this.price, this.id});

  Post.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    address = json['address'];
    price = json['price'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['img'] = this.img;
    data['address'] = this.address;
    data['price'] = this.price;
    data['id'] = this.id;
    return data;
  }
}
