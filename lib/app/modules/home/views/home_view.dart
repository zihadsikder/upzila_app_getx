import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kutubdia/app/modules/home/views/screens/about_screens.dart';
import 'package:kutubdia/app/modules/home/views/screens/administrative_screens.dart';
import 'package:kutubdia/app/modules/home/views/screens/education_screens.dart';
import 'package:kutubdia/app/modules/home/views/screens/hospital_screens.dart';
import 'package:kutubdia/app/modules/home/views/screens/privacy_screens.dart';
import 'package:kutubdia/app/modules/home/views/screens/spertucular_screens.dart';
import 'package:kutubdia/app/modules/home/views/screens/traveller_screens.dart';
import 'package:kutubdia/app/modules/home/views/widgets/carusel_slider.dart';
import 'package:kutubdia/app/modules/home/views/widgets/test_button_card.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 4,
              ),
              MyCarouselSlider(),
              const SizedBox(height: 8.0),
              TextButtonCard(
                onPressed: () {
                  Get.to(const TravellerScreen());
                },
                text: ' ভ্রমণের জন্য নির্দেশনা...',
              ),
              const SizedBox(height: 24.0,),
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = screenWidth > 600 ? 6 : 3; // Adjust grid count based on screen width

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: 1, // Adjust child aspect ratio if needed
                    ),
                    itemCount: 6, // Change the itemCount as needed
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return buildCard(Icons.local_police_outlined, 'Administrative', () {
                            Get.to(() => const AdministrativeScreens());
                          });
                        case 1:
                          return buildCard(Icons.cast_for_education, 'Education', () {
                            Get.to(() => const EducationScreen());
                          });
                        case 2:
                          return buildCard(Icons.local_hospital_outlined, 'Hospital', () {
                            Get.to(() => const HospitalScreens());
                          });
                        case 3:
                          return buildCard(Icons.info_outline, 'About', () {
                            Get.to(() => const AboutScreen());
                          });
                        case 4:
                          return buildCard(Icons.history, 'Spectacular Place', () {
                            Get.to(() => const SpectacularPlace());
                          });
                        case 5:
                          return buildCard(Icons.devices_other_outlined, 'Others', () {
                            launch('https://kutubdia.coxsbazar.gov.bd/');
                          });
                        default:
                          return Container();
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar get buildAppBar {
    return AppBar(
      backgroundColor: Colors.red.shade600,
      title: const Text(
        'KUTUBDIA',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share_outlined,color: Colors.white,),
          onPressed: () {
            const appLink =
                'https://play.google.com/store/apps/details?id=com.kutubdia.app';
            Share.share('Check out this awesome app: $appLink');
            //Navigator.of(context).pop();
          },
        ),
        IconButton(
          icon: const Icon(Icons.star_rate,color: Colors.white,),
          onPressed: () {
            _rateUs();
          },
        ),
        IconButton(
          icon: const Icon(Icons.privacy_tip_outlined,color: Colors.white,),
          onPressed: () {
            Get.to(()=> const PrivacyScreen());
          },
        ),
      ],
    );
  }

  Widget buildCard(IconData icon, String label, VoidCallback onPressed) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              icon,
              size: 70,
            ),
            onPressed: onPressed,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  void _rateUs() async {
    const url = 'https://play.google.com/store/apps/details?id=com.kutubdia.app'; // replace with your app's URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}