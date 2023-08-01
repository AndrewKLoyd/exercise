import 'package:exercise/model/appointment_m.dart';
import 'package:exercise/widgets/shadowed_title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentV extends StatelessWidget {
  const AppointmentV({super.key, required this.appointment});
  final AppointmentM appointment;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            // Doctor title is here
            //
            Text(
              appointment.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
              width: 5,
            ),

            //
            // Here's doc's base data (name, rating, avatar)
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                            "https://www.healthstaffrecruitment.com.au/wp-content/uploads/2015/05/bigstock-Portrait-of-young-woman-doctor-70264798.jpg")),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(appointment.doctorName),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    Text(appointment.doctorRating.toString()),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            //
            // Appointment date, time and patient name
            //
            Row(
              children: [
                ShadowedTitle(
                  icon: const Icon(Icons.av_timer_outlined, size: 16),
                  bgColor: Colors.black12,
                  text: Text(
                    DateFormat("dd.MM.yyyy, HH:MM").format(appointment.date),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                ShadowedTitle(
                  bgColor: Colors.black12,
                  text: Text(appointment.patientName,
                      style: Theme.of(context).textTheme.titleMedium),
                  icon: const Icon(
                    Icons.person,
                    size: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
