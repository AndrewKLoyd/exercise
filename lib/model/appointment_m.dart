import 'package:uuid/uuid.dart';

/// Consider that class is a base
/// Med test? doctors appointment and all similar stuff where doctors and patient involved
class AppointmentM {
  final String id;
  final String title;
  final String doctorName;
  final DateTime date;
  final String patientName;
  final double doctorRating;

  AppointmentM(this.title, this.doctorName, this.date, this.patientName,
      this.doctorRating)
      : id = const Uuid().v1() {
    //TODO: Actions on appointment creations
  }
}
