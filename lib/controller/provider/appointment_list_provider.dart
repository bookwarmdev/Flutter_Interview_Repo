import 'package:flutter/material.dart';
import 'package:lox_corporate_services/data/models/appointment_list_model.dart';

class AppointmentListProvider extends ChangeNotifier {
  final List<AppointmentListModel> _nuresList = [
    AppointmentListModel(
      name: "Seun Olumide",
      time: "10:00 Am",
      status: true,
    ),
    AppointmentListModel(
      name: "Liam Belesen",
      time: "12:00 Am",
      status: true,
    ),
    AppointmentListModel(
      name: "Noah Olamide",
      time: "1:00 PM",
      status: true,
    ),
    AppointmentListModel(
      name: "Oliver",
      time: "2:00 PM",
      status: false,
    ),
    AppointmentListModel(
      name: "Elijah Emma",
      time: "3:00 PM",
      status: false,
    ),
    AppointmentListModel(
      name: "Amelia Charlotte",
      time: "4:00 PM",
      status: false,
    ),
    AppointmentListModel(
      name: "Ola Jon",
      time: "5:00 PM",
      status: false,
    ),
  ];
  List<AppointmentListModel> get getNures => _nuresList;
}
