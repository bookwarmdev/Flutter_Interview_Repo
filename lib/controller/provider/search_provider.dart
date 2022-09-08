import 'package:flutter/foundation.dart';
import 'package:lox_corporate_services/data/models/hire_nurse_model.dart';

class SearchProvider extends ChangeNotifier {
  final List<HireNurseModel> _nuresList = [
    HireNurseModel(
      name: "Seun Olumide",
      location: "Gbagada",
      amount: "250",
    ),
    HireNurseModel(
      name: "Liam Belesen",
      location: "Ojuta",
      amount: "200",
    ),
    HireNurseModel(
      name: "Noah Olamide",
      location: "Surulere",
      amount: "2000",
    ),
    HireNurseModel(
      name: "Oliver",
      location: "Joy",
      amount: "500",
    ),
    HireNurseModel(
      name: "Elijah Emma",
      location: "Yaba",
      amount: "750",
    ),
    HireNurseModel(
      name: "Amelia Charlotte",
      location: "ikoye",
      amount: "350",
    ),
    HireNurseModel(
      name: "Ola Jon",
      location: "Lagos",
      amount: "200",
    ),
  ];
  List<HireNurseModel> get getNures => _nuresList;
}
