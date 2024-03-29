
import 'package:taxi_app/src/model/car_item.dart';

class CarUtils {
  static List<CarItem> cars;

  static List<CarItem> getCarList() {
    if(cars != null) {
      return cars;
    }

    cars = new List();
    cars.add(CarItem("Xe 4 chỗ thường", "ic_pickup_sedan.png", 1.5));
    cars.add(CarItem("Xe 4 chỗ vip", "ic_pickup_suv.png", 2));
    cars.add(CarItem("Xe 6 chỗ vip", "ic_pickup_van.png", 2.5));
    cars.add(CarItem("Xe đặc biệt", "ic_pickup_hatchback.png", 3));

    return cars;
  }
}