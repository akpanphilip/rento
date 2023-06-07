class Car {
  final int carId;
  final String carType;
  final String carName;
  final String carDetails;
  final String carPrice;
  final String imageURL;

  Car({
    required this.carId,
    required this.carType,
    required this.carName,
    required this.carDetails,
    required this.carPrice,
    required this.imageURL,
  });

  // List of car data

  static List<Car> carList = [
    Car(
        carId: 1,
        carType: 'SEDAN',
        carName: '2019 Honda Civic Sedan',
        carDetails: 'lorem digutu vibra lingn supun',
        carPrice: '2000',
        imageURL: 'assets/images/2019-honda-civic-sedan.jpg')
  ];
}
