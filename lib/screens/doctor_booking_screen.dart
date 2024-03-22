import 'package:flutter/material.dart';

import 'appointment_selection.dart';

class DoctorBookingScreen extends StatelessWidget {
  const DoctorBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text('Book Doctor'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. John Doe',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Specialization: Cardiologist',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 16),
                            // Date Picker
                            // SizedBox(height: 8),
                            const SizedBox(height: 16),
                            // Book Appointment Button
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.deepPurpleAccent.shade100),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AppointmentSelection(),
                                  ));
                                },
                                child: const Text(
                                  'Book Appointment',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 60,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
