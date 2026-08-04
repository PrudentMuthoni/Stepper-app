

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product(this.name, this.description, this.price, this.imageUrl);

}

final List<Product> dummyProducts = [
  Product(
    'Wireless Headphones',
    'Over ear headphones with noise cancelling',
    31000.0,
    'https://picsum.photos/seed/car/300/300',
  ),
  Product(
    'Smart Watch',
    'Track steps, heart rate, calories, sync with phone and more',
    3500.0,
    'https://picsum.photos/seed/watch/300/300',
  ),
  Product(
    'Backpack',
    'Anti theft laptop bag with durable build and rugged materials',
    800.0,
    'https://picsum.photos/seed/backpack/300/300',
  ),
  Product(
    'Nothing phone 2',
    'Relentlessly excelsior, Android Samsung 32',
    64000.0,
    'https://picsum.photos/seed/smartphone/300/300',
  ),
  Product(
    'Coaster',
    'Anti spill anti slip coffee coaster with style',
    150.0,
    'https://picsum.photos/seed/coaster/300/300',
  ),
  Product(
    'Sharpener',
    'Mechanical pencil sharpener with collection tray for upto 300cc',
    150.0,
    'https://picsum.photos/seed/pencil/300/300',
  ),
];