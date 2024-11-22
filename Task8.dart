void main() {
  List<House> house = [];
  house.add(House("Moamen", 1, 2000000));
  house.add(House("Mohamed", 2, 1600000));
  house.add(House("Omar", 3, 1800000));

  for (int i = 0; i < house.length; i++) {
    print(
        "House name is ${house[i].name}\nHouse id is ${house[i].id}\nHouse price is ${house[i].price}\n");
  }
}

class House {
  String? name;
  int? id;
  int? price;
  House(this.name, this.id, this.price);
}
