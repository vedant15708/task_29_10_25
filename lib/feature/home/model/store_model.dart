class Store {
  final String id;
  final String name;
  final String category;
  final String address;
  final String distance;
  final double rating;
  final String imageUrl;

  Store({
    required this.id,
    required this.name,
    required this.category,
    required this.address,
    required this.distance,
    required this.rating,
    required this.imageUrl,
  });
}

final List<Store> storeData = [
  Store(
    id: '1',
    name: 'Walmart',
    category: 'Grocery',
    address: '3456 Washington Street, Us, 4568',
    distance: '1 mile',
    rating: 4.5,
    imageUrl: 'assets/images/walmart.jpeg',
  ),
  Store(
    id: '2',
    name: 'Stop & Shop',
    category: 'Grocery and General',
    address: '3456 Washington Street, Us, 4568',
    distance: '2 mile',
    rating: 4.5,
    imageUrl: 'assets/images/stopandshop.jpeg',
  ),
  Store(
    id: '3',
    name: 'Safeway',
    category: 'Grocery',
    address: '3456 Washington Street, Us, 4568',
    distance: '3.5 mile',
    rating: 4.5,
    imageUrl: 'assets/images/safeway.jpg',
  ),
  Store(
    id: '4',
    name: 'Giant Food Stores',
    category: 'Grocery',
    address: '3456 Washington Street, Us, 4568',
    distance: '4 mile',
    rating: 4.5,
    imageUrl: 'assets/images/giantfoodstore.jpeg',
  ),

  Store(
    id: '5',
    name: 'Meijer',
    category: 'Grocery',
    address: '3456 Washington Street, Us, 4568',
    distance: '4 mile',
    rating: 4.5,
    imageUrl: 'assets/images/meijer.jpeg',
  ),
];