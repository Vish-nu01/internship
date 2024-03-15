import 'package:flutter/material.dart';
import '../model/hospital_model.dart';
import 'doctor_booking_screen.dart'; // Make sure to import your Hospital model

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Hospital> dummyHospitals = [
    Hospital(
      name: 'City Hospital',
      location: '123 Main Street, City',
      specialization: 'General Medicine',
    ),
    Hospital(
      name: 'Sunset Hospital',
      location: '456 Elm Street, Town',
      specialization: 'Pediatrics',
    ),
    Hospital(
      name: 'Mountain View Hospital',
      location: '789 Oak Avenue, Mountain View',
      specialization: 'Orthopedics',
    ),
    // Add more dummy hospital data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XXXXXXXX'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome XXXXX ,',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Book Appointments',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: dummyHospitals.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorBookingScreen(),
                          ));
                        },
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.21,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/236x/07/b5/ff/07b5ff2a8a2ab5dd7d29f31d5d73835e.jpg'),
                                    height: 130,
                                    width: 130,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    dummyHospitals[index].name,
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Specialization: ${dummyHospitals[index].specialization}',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
