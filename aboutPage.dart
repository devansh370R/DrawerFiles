import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Our Bus Ticket Booking App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Our Bus Ticket Booking App is designed to make your travel experience convenient and hassle-free. Whether you\'re commuting to work or planning a long journey, our app provides a seamless booking process for bus tickets to various destinations.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Key Features:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '- Search and book bus tickets from a wide range of destinations.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '- Check bus schedules and seat availability in real-time.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '- View detailed information about bus routes, operators, and amenities.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '- Manage your bookings, including cancellations and rescheduling.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Us:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'For any inquiries or assistance, please feel free to reach out to us:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Email: support@busticketbooking.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Phone: +91 812700 00 99',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
