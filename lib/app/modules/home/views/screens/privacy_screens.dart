import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Privacy Screen',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Welcome to the Kutubdia App. This Privacy Policy explains how we handle any information collected when you use our mobile application. Please read this privacy policy carefully. If you do not agree with the terms of this privacy policy, please do not access the application.'),
                Text(
                  '1. Information We Collect',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'No Information Collected',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    'We want to assure you that we do not collect any personal information, usage data, or device information when you use the Kutubdia App. The app is designed to provide information about Kutubdia without requiring you to provide any personal data.'),
                Text(
                  '2. How We Use Your Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    'Since we do not collect any information, we do not use your data in any way.'),
                Text(
                  '3. Sharing Your Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    'As we do not collect any personal data, there is no information to share with third parties.'),
                Text(
                  '4. Security of Your Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    'We take your privacy seriously. Although we do not collect any personal data, we still implement security measures to protect the integrity and security of the app and your interaction with it.'),
                Text(
                  '5. Links to Other Websites',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    'The Kutubdia App may contain links to external websites for additional information. Please be aware that we are not responsible for the content or privacy practices of those websites. We encourage you to read the privacy policies of any third-party sites you visit.'),
                Text(
                  '6. Changes to This Privacy Policy',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.'),
                Text(
                  '7. Contact Us',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    'If you have any questions or concerns about this Privacy Policy, please contact us at:'),
                Text('Email: [zihadsikder.cse@gmail.com]'),
                Text('Thank you for using the Kutubdia App!'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
