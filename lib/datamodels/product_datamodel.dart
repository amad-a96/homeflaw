class Product {
  String? phoneNumber;
  String? imgUrl;
  String? sellOrRentType;
  String? title;
  String? location;
  String? description;
  String? propertyType;
  String? price;
  String? area;
  
  String? bedrooms;
  String? baths;
  String? kitchens;
  String? drawingrooms;
  String? diningrooms;
  String? laundryrooms;
  String? servantquarters;

  Product(
      {this.phoneNumber,
      this.imgUrl,
      this.sellOrRentType,
      this.area,
      this.title,
      this.location,
      this.description,
      this.propertyType,
      this.price,
      this.bedrooms,
      this.baths,
      this.kitchens,
      this.drawingrooms,
      this.diningrooms,
      this.laundryrooms,
      this.servantquarters});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        phoneNumber: json["phoneNumber"],
        imgUrl: json["imgUrl"],
        sellOrRentType: json["sellOrRentType"],
        title: json["title"],
        location: json["location"],
        description: json["description"],
        propertyType: json["propertyType"],
        price: json["price"],
        area: json["area"],
        bedrooms: json["bedrooms"],
        baths: json["baths"],
        kitchens: json["kitchens"],
        drawingrooms: json["drawingrooms"],
        diningrooms: json["diningrooms"],
        laundryrooms: json["laundryrooms"],
        servantquarters: json["servantquarters"],
      );

  Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "imgUrl": imgUrl,
        "sellOrRentType": sellOrRentType,
        "title": title,
        "location": location,
        "description": description,
        "propertyType": propertyType,
        "price": price,
        "area": area,
        "bedrooms": bedrooms,
        "baths": baths,
        "kitchens": kitchens,
        "drawingrooms": drawingrooms,
        "diningrooms": diningrooms,
        "laundryrooms": laundryrooms,
        "servantquarters": servantquarters,
      };

  @override
  String toString() {
    return 'Product{ phoneNumber:$phoneNumber imgUrl:$imgUrl sellOrRentType: $sellOrRentType, title: $title, location: $location, description: $description, propertyType: $propertyType, price: $price, area:$area ,bedrooms: $bedrooms, baths: $baths, kitchens: $kitchens, drawingrooms: $drawingrooms, diningrooms: $diningrooms, laundryrooms: $laundryrooms, servantquarters: $servantquarters}';
  }
}
