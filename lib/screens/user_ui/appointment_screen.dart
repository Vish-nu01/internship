import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: const Text(
            'Appointments',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurpleAccent.shade100,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.grey[300],
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Pending Appointments & Medications',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
              height: 0,
              thickness: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Replace with your actual appointment count
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    elevation: 4,
                    child: ExpansionTile(
                      title: Text(
                        'Appointment ${index + 1}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            'Appointment ${index + 1}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Date: 2022-12-0${index + 1}', // Example date
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepPurpleAccent,
                            foregroundColor: Colors.white,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: () {
                            // Navigate to appointment details screen
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
