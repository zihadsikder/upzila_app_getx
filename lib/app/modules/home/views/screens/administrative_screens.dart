import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/test_button_card.dart';

class AdministrativeScreens extends StatelessWidget {
  const AdministrativeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text(
          "Administrative Area's",
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
                  _launchUrl('http://police.kutubdia.coxsbazar.gov.bd/bn');
                },
                text: ' আরো বিস্তারিত জানুন...',
              ),
              const Text(' * কুতুবদিয়া থানা',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Center(child: Image.asset('assets/thana.jpg', fit: BoxFit.cover)),
              const Text(
                  'কুতুবদিয়া থানা বাংলাদেশের কক্সবাজার জেলার অন্তর্গত কুতুবদিয়া উপজেলার একটি থানা। কুতুবদিয়া থানা গঠিত হয় ১৯১৭ সালে।'),
              const Text('* আদালত ভবন কুতুবদিয়া',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Center(child: Image.asset('assets/court.jpg', fit: BoxFit.cover)),
              const Text(
                  'সূত্রে জানা যায়, ১৯৮৫ সালে কুতুবদিয়া জুডিশিয়াল ম্যাজিস্ট্রেটের আদালত ভবনের কাজ শুরু হয় তৎকালীন এরশাদ সরকারের আমলে। এর পর থেকে দীর্ঘ দিন সংস্কার না করায় কুতুবদিয়া জুডিশিয়াল ম্যাজিস্ট্রেটের আদালত ভবনটি এখন জরাজীর্ণ হয়ে গেছে। তবে আদালতে প্রশাসনিক কার্যক্রম চালু আছে।'),
              Row(
                children: [
                  const Text('* ফায়ার সার্ভিস ষ্টেশন কুতুবদিয়া',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        _launchPhoneDialer("+8801327088199");
                      },
                      icon: const Icon(
                        Icons.call_end_rounded,
                        size: 30,
                        color: Colors.blue,
                      ))
                ],
              ),
              Center(child: Image.asset('assets/fire.jpg', fit: BoxFit.cover)),
              const Text(
                  'জরুরী প্রয়োজনে কুতুবদিয়াবাসীর সাথে রয়েছে ফায়ার সার্ভিস কুতুবদিয়া। এটি কুতুবদিয়া কলেজ সড়কে অবস্থিত। '),
            ],
          ),
        ),
      ),
    );
  }

  void _launchPhoneDialer(String phoneNumber) async {
    final url = Uri.parse('tel:$phoneNumber');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchUrl(String urlString) async {
    final url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
