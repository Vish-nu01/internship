import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(elevation: 10,
          title: Text('Appointments'),
        ),
        body: Column(
          children: [
            Container(width: double.infinity,color: Colors.grey,height: 40,
              child: Text(
                'Pending Appointments & Medications',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with your actual appointment count
                itemBuilder: (context, index) {
                  return ExpansionTile(title: Text('Appointment'), children: [
                    ListTile(
                      title: Text('Appointment ${index + 1}'),
                      subtitle: Text('Date: 2022-12-0${index + 1}'),
                      // Example date
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                      ),
                      onTap: () {
                        // Navigate to appointment details screen
                      },
                    ),
                  ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
