import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/test_button_card.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text(
          'Educations',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                'assets/edu.jpg',
                fit: BoxFit.cover,
              )),
              const SizedBox(
                height: 4,
              ),
              TextButtonCard(
                onPressed: () {
                  launch('http://eo.kutubdia.coxsbazar.gov.bd/');
                },
                text: ' আরো বিস্তারিত জানুন...',
              ),
              const SizedBox(
                height: 4,
              ),
              const Text('শিক্ষা',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const Text(
                  'কুতুবদিয়া উপজেলার সাক্ষরতার হার ৭৭%।[৩] এ উপজেলায় ১টি সরকারি কলেজ, ১টিমহিলা কলেজ, ১টি সরকারি মাধ্যমিক বিদ্যালয় (বালিকা), ১টি টেকনিক্যাল এন্ড বিএম কলেজ, ১টি ফাজিল মাদ্রাসা, ১টি আলিম মাদ্রাসা, কওমী মাদ্রাসা ০৭টি, এবতেদায়ী (স্বতন্ত্র) ০৮ টি, ফোরকানিয়া মাদ্রাসা ২০৫ টি, হাফেজীয়া মাদ্রাসা ১৭ টি, নূরানী মাদ্রাসা ০২ টি, ২টি স্কুল এন্ড কলেজ, ৮টি মাধ্যমিক বিদ্যালয়,৮টি দাখিল মাদ্রাসা,১টি নিম্ন মাধ্যমিক (বালিকা) বিদ্যালয় ও ৫৯টি প্রাথমিক বিদ্যালয় রয়েছে, ৩২টি কিন্ডারগার্টেন'),
            ],
          ),
        ),
      ),
    );
  }
}
