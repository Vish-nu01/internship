import 'package:flutter/material.dart';

class DoctorBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Doctor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor's Information
            Text(
              'Dr. John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Specialization: Cardiologist',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Date Picker
            Text(
              'Select Date and Time:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // TODO: Add your date and time picker widget here
            SizedBox(height: 16),
            // Book Appointment Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement booking functionality
                  // Navigate to confirmation screen or perform booking action
                },
                child: Text('Book Appointment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
