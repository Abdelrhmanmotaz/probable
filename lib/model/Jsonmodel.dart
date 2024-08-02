class JsonModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  List<address>? address1;
  JsonModel.json(Map data) {
    this.id = data["id"];
    this.name = data["name"];
    this.username = data["username"];
    this.email = data["email"];
    this.phone = data["phone"];
    this.website = data["website"];
    
  }
}

class address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  address.json(Map data) {
    this.street = data["street"];
    this.suite = data["suite"];
    this.city = data["city"];
    this.zipcode = data["zipcode"];
  }
  List<Geo>? geo;
  List<Company>? company;
}

class Geo {
  String? lat;
  String? lng;
  Geo.json(Map data) {
    this.lat = data["lat"];
    this.lng = data["lng"];
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;
  Company.json(Map data) {
    this.name = data["name"];
    this.catchPhrase = data["catchPhrase"];
    this.bs = data["bs"];
  }
}
