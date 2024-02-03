class Subscription {
  String Category;

  String price;
  List<String> nameOfmenu;
  Subscription(
      {required this.price, required this.nameOfmenu, required this.Category});
}

List<Subscription> subscription = [
  Subscription(price: 'Get Everthing for 1 ', nameOfmenu: [], Category: 'Free'),
  Subscription(
      Category: 'Standart', price: '\$ 3 ', nameOfmenu: ['Create Shop']),
  Subscription(
      Category: 'Standart', price: '\$ 3 ', nameOfmenu: ['Create Garage']),
  Subscription(
      Category: 'Standart',
      price: '\$ 5 \$',
      nameOfmenu: ['Create Shop', 'Create Garage']),
  Subscription(
      Category: 'Premuns',
      price: '\$ 9 \$',
      nameOfmenu: ['DTC', 'Training Course', 'Repair Document']),
  Subscription(Category: 'Super VIP', price: '\$ 29 ', nameOfmenu: [
    'DTC',
    'Training Course',
    'Create Shop',
    'Create Garage',
    'Repair Document'
  ]),
];
