class Destination {
  String imageUrl;
  String land;
  String destination;
  String description;

  Destination({
    this.imageUrl,
    this.destination,
    this.land,
    this.description,
  });
}

final List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    land: 'Frankreich',
    destination: 'Paris',
    description: 'Hallo from Paris',
  ),
  Destination(
    imageUrl: 'assets/images/ny.jpg',
    land: 'USA',
    destination: 'New York',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores',
  ),
  Destination(
    imageUrl: 'assets/images/london.jpg',
    land: 'England',
    destination: 'London',
    description: 'Hallo from London'
    
  ),
  Destination(
    imageUrl: 'assets/images/rom.jpg',
    land: 'Italy',
    destination: 'Rome',
    description: 'Hallo from Rome, Hallo from Rome'
    
  ),
    Destination(
    imageUrl: 'assets/images/hk.jpg',
    land: 'Thailand',
    destination: 'Hong Kong',
    description: 'Hallo from Hong Kong'
  ),
];