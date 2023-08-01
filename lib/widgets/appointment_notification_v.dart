import 'package:exercise/model/appointmetn_notification_m.dart';
import 'package:exercise/widgets/shadowed_title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmetnNotificationV extends StatelessWidget {
  const AppointmetnNotificationV({super.key, required this.notification});
  final AppointmetnNotificationM notification;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                notification.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              ShadowedTitle(
                bgColor: Colors.red.shade500,
                text: const Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "${notification.appointment.doctorName}. ${notification.appointment.title}. ${DateFormat("dd.MM.yyyy HH:MM").format(notification.appointment.date)}",
            style: const TextStyle(fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            DateFormat("dd.MM.yyyy").format(notification.date),
            style: const TextStyle(fontWeight: FontWeight.w200),
          )
        ]),
      ),
    );
  }
}
