import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/test_button_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text(
          'History',
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
                'assets/kutubdia.jpeg',
                fit: BoxFit.cover,
              )),
              const SizedBox(
                height: 4,
              ),
              TextButtonCard(
                onPressed: () {
                  launch('https://kutubdia.coxsbazar.gov.bd/');
                },
                text: 'আরো বিস্তারিত জানুন...',
              ),
              const Text(
                  'কুতুবদিয়া বাংলাদেশের কক্সবাজার জেলার অন্তর্গত একটি উপজেলা। এটি একটি দ্বীপ, যা কুতুবদিয়া চ্যানেল দ্বারা মূল ভূখণ্ড থেকে বিচ্ছিন্ন।'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'কক্সবাজার থেকে কুতুবদিয়া দুরত্ব  -৯০ কিঃ মিঃ (প্রায়)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'চট্টগ্রাম থেকে কুতুবদিয়ার  দুরত্ব  -১১৫ কি:মি: (প্রায়)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'প্রধান পেশা  -কৃষি, লবণ, মৎস্য।',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'উল্লেখযোগ্য ব্যক্তিত্ব',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                  ' > কুতুবউদ্দিন (রহ.) [যার নামে কুতুবদিয়া দ্বীপের নামকরণ]'),
              const SizedBox(
                height: 4,
              ),
              const Text(' > আলী আকবর (রহ.)'),
              const SizedBox(
                height: 4,
              ),
              const Text(' > আলী ফকির (রহ.)'),
              const SizedBox(
                height: 4,
              ),
              const Text(' > শাহ্ আবদুল মালেক আল কুতুবী'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'অবস্থান ও আয়তন',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  'কুতুবদিয়া উপজেলার আয়তন ১০০ বর্গ কিলোমিটার।[২]কক্সবাজার জেলার উত্তর-পশ্চিমাংশে ২১°৪৩´ কে ২১°৫৬´ উত্তর অক্ষাংশ থেকে ৯১°৫০´ থেকে ৯১°৫৪´ পূর্ব দ্রাঘিমাংশ জুড়ে কুতুবদিয়া উপজেলার অবস্থান। কক্সবাজার জেলা সদর থেকে এ উপজেলার দূরত্ব ৭৫ কিলোমিটার। এর উত্তর, পশ্চিম ও দক্ষিণে বঙ্গোপসাগর, পূর্বে কুতুবদিয়া চ্যানেল, চট্টগ্রাম জেলার বাঁশখালী উপজেলা, পেকুয়া উপজেলা ও মহেশখালী উপজেলা।[৩]'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'প্রশাসনিক এলাকা',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  '১৯১৭ সালে মহেশখালী থানা থেকে পৃথক করে কুতুবদিয়া থানা গঠিত হয় এবং থানাকে উপজেলায় রূপান্তর করা হয় ১৯৮৩ সালে।[৩] এ উপজেলায় ৬টি ইউনিয়ন রয়েছে এবং এ উপজেলার প্রশাসনিক কার্যক্রম কুতুবদিয়া থানার আওতাধীন।'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'ইউনিয়নসমূহ:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('১নং উত্তর ধুরুং'),
              const Text('২নং দক্ষিণ ধুরুং'),
              const Text('৩নং লেমশীখালী'),
              const Text('৪নং কৈয়ারবিল'),
              const Text('৫নং বড়ঘোপ'),
              const Text('৬নং আলী আকবর ডেইল'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'ইতিহাস ও নামকরণ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  ' কুতুবদিয়া সৈকত দীর্ঘদিন ধরে কুতুবদিয়া দ্বীপের গঠন প্রক্রিয়া শুরু হলেও এ দ্বীপ সমুদ্রের বুক থেকে জেগে উঠে চতুর্দশ শতাব্দীর শেষের দিকে। ধারণা করা হয় পঞ্চদশ শতাব্দীর শেষের দিকে এ দ্বীপে মানুষের পদচারণা। হযরত কুতুবুদ্দীন নামে এক কামেল ব্যক্তি আলী আকবর, আলী ফকির, এক হাতিয়া সহ কিছু সঙ্গী নিয়ে মগ পর্তুগীজ বিতাড়িত করে এ দ্বীপে আস্তানা স্থাপন করেন। অন্যদিকে আরাকান থেকে পলায়নরত মুসলমানেরা চট্টগ্রামের আশেপাশের অঞ্চল থেকে ভাগ্যান্বেষণে উক্ত দ্বীপে আসতে থাকে। জরিপ করে দেখা যায়, আনোয়ারা, বাঁশখালী, সাতকানিয়া, পটিয়া, চকরিয়া অঞ্চল থেকে অধিকাংশ আদিপুরুষের আগমন। নির্যাতিত মুসলমানেরা কুতুবুদ্দীনের প্রতি শ্রদ্ধান্তরে কুতুবুদ্দীনের নামানুসারে এ দ্বীপের নামকরণ করেন কুতুবুদ্দীনের দিয়া, যা পরবর্তীতে কুতুবদিয়া নামে স্বীকৃতি লাভ করে।[৫] দ্বীপকে স্থানীয়ভাবে দিয়া বা ডিয়া বলা হয়। পরবর্তীতে বিভিন্ন এলাকা থেকে লোকজন এসে এইদ্বীপে বসবাস শুরু করে। বর্তমানে (২০১৭) এই দ্বীপের বয়স ৬০০ বছর পেরিয়ে গেছে। এই দ্বীপের আয়তন প্রায় দুই-তৃতীয়াংশ কমে গেছে এবং এখনও সাগরের ঢেউয়ের প্রভাবে ভেঙ্গে সমুদ্রে পরিণত হচ্ছে সৌন্দর্যের লীলাভূমি সাগরকন্যা কুতুবদিয়া দ্বীপটি।'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'জনসংখ্যার উপাত্ত',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  ' জনসংখ্যার উপাত্ত ২০১১ সালের পরিসংখ্যান অনুযায়ী কুতুবদিয়া উপজেলার লোকসংখ্যা ১, ৩৩,৮৮৮ জন। এর মধ্যে পুরুষ ৬৯,৭৩৮ জন এবং মহিলা ৬৪,১৫০ জন।[১] এ উপজেলার মোট জনসংখ্যার ৯৩% মুসলিম, ৬.৯৬% হিন্দু এবং ০.০৪% বৌদ্ধ ও অন্যান্য ধর্মাবলম্বী রয়েছে।[৩]'),
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
              const SizedBox(
                height: 4,
              ),
              const Text(
                'স্বাস্থ্য',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  ' কুতুবদিয়া উপজেলায় ১টি উপজেলা স্বাস্থ্য কমপ্লেক্স, ৪টি উপস্বাস্থ্য কেন্দ্র ও ৬টি পরিবার পরিকল্পনা কেন্দ্র রয়েছে।[৩]'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'যোগাযোগ ব্যবস্থা',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  'কক্সবাজার জেলা সদর বা বাংলাদেশের যে কোন অঞ্চল থেকে কুতুবদিয়া উপজেলায় একমাত্র যোগাযোগ ব্যবস্থা নৌপথে। প্রধান যোগাযোগ মাধ্যম লঞ্চ, স্টীমার, ছোট ডেনিস বোট ও স্পীড় বোট।'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'খাল ও নদী',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  'কুতুবদিয়া উপজেলার উত্তর, পশ্চিম ও দক্ষিণ তিন দিকেই বঙ্গোপসাগর এবং পূর্বে কুতুবদিয়া চ্যানেল।[৩]'),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'হাট-বাজার',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  'কুতুবদিয়া উপজেলায় মোট হাট-বাজার ১২টি। এর মধ্যে বড়ঘোপ বাজার এবং ধুরুং বাজার উল্লেখযোগ্য।[৩]')
            ],
          ),
        ),
      ),
    );
  }
}
