import 'package:exercise/model/appointment_m.dart';
import 'package:exercise/model/appointmetn_notification_m.dart';
import 'package:exercise/model/carousel_item_m.dart';
import 'package:exercise/view/bookmarks_v.dart';
import 'package:exercise/widgets/appointment_notification_v.dart';
import 'package:exercise/widgets/appointmet_v.dart';
import 'package:exercise/widgets/carousel_item_v.dart';
import 'package:exercise/widgets/carousel_v.dart';
import 'package:flutter/material.dart';

class HomeV extends StatelessWidget {
  const HomeV({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Text("Записаться"),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton.icon(
            label: const Text("Меню"),
            onPressed: () {},
            icon: const Icon(Icons.list),
          ),
          TextButton.icon(
              label: const Text("Штрихкод"),
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner_sharp))
        ]),
      ),
      appBar: AppBar(
        title: const Text("Главная"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppointmetnNotificationV(
                  notification: AppointmetnNotificationM(
                      AppointmentM(
                        "Консультация, хирург",
                        "Кузьминова А.В.",
                        DateTime(2023, 4, 2, 12, 22),
                        "Екатерина К",
                        4.8,
                      ),
                      DateTime.now(),
                      "Ожидает подтверждения"),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Предстоящие приёмы",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppointmentV(
                  appointment: AppointmentM(
                    "Консультация, хирург",
                    "Кузьминова А.В.",
                    DateTime(2023, 4, 2, 12, 22),
                    "Екатерина К",
                    4.8,
                  ),
                ),
                CarouselV(carouselItems: [
                  CarouselItem(
                    carouselItem: CarouselItemM(
                        "Консультация",
                        "30 % скидка при оформлении санаторно-курортной карты, 100% скидка при получении прочих услуг гинеколога в день приема на сумму не менее 1500 руб.",
                        "1500 P",
                        const NetworkImage(
                            "https://www.healthstaffrecruitment.com.au/wp-content/uploads/2015/05/bigstock-Portrait-of-young-woman-doctor-70264798.jpg"),
                        "3000 P"),
                  ),
                  CarouselItem(
                    carouselItem: CarouselItemM(
                        "Консультация",
                        "30 % скидка при оформлении санаторно-курортной карты, 100% скидка при получении прочих услуг гинеколога в день приема на сумму не менее 1500 руб.",
                        "1500 P",
                        const NetworkImage(
                            "https://www.healthstaffrecruitment.com.au/wp-content/uploads/2015/05/bigstock-Portrait-of-young-woman-doctor-70264798.jpg"),
                        "3000 P"),
                  ),
                  CarouselItem(
                    carouselItem: CarouselItemM(
                        "Консультация",
                        "30 % скидка при оформлении санаторно-курортной карты, 100% скидка при получении прочих услуг гинеколога в день приема на сумму не менее 1500 руб.",
                        "1500 P",
                        const NetworkImage(
                            "https://www.healthstaffrecruitment.com.au/wp-content/uploads/2015/05/bigstock-Portrait-of-young-woman-doctor-70264798.jpg"),
                        "3000 P"),
                  ),
                ]),
                const BookmarksV(),
              ]),
        ),
      ),
    );
  }
}
