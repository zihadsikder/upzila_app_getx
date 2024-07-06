import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../widgets/test_button_card.dart';

class HospitalScreens extends StatelessWidget {
  const HospitalScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text(
          "Kutubdia Govt. Hospital",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButtonCard(
                onPressed: () {
                  launch(
                      'https://app.dghs.gov.bd/localhealthBulletin2016/publish/publish.php?org=10000924&year=2016&lvl=1');
                },
                text: ' আরো বিস্তারিত জানুন...',
              ),
              const Text(' * কুতুবদিয়া হাসপাতাল',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const Text(
                  'কুতুবদিয়ায় ১ টি সরকারী হাসপাতাল এবং বেশ কয়েকটি ডায়াগনিষ্ঠিক সেন্টার সহ প্রাইভেট হাসপাতাল রয়েছে।'),
              Center(
                  child: Image.asset(
                    'assets/hospital.jpg',
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 14,
              ),
              const Text(
                  'বর্তমানে বিদ্যুৎ সুবিধা থাকায় কুতুবদিয়া উপজেলা স্বাস্থ্য কমপ্লেক্স সব ধরণের চিকিৎসা সুবিধার আওতাভুক্ত হয়েছে। যেমন:'),
              const Text('* ই.সি.জি'),
              const Text('* সিজার এবং নরমাল ডেলিভারি'),
              const Text('* জরুরি ওয়ার্ড'),
              const Text('* অপারেশন'),
              const Text('* করোনা সেকশন'),
              const Text(
                  '* ডেঙ্গু সহ নানান রোগের পরীক্ষা নিরীক্ষা সহ বেশিরভাগ চিকিৎসা উপজেলা স্বাস্থ্য কমপ্লেক্স এ করা হয়। রোগীর অবস্থা জটিল মনে হলে কক্সবাজার, চকরিয়া অথবা চট্টগ্রাম মেডিকেল কলেজ হাসপাতাল রেফার করা হয়'),
            ],
          ),
        ),
      ),
    );
  }
}
