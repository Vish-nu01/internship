import 'package:flutter/material.dart';
import '../model/hospital_model.dart';
import 'doctor_booking_screen.dart';

class HomePage extends StatelessWidget {
  final List<Hospital> dummyHospitals = [
    Hospital(
      hospitalId: 100,
      hospitalName: 'City Hospital',
      address: '123 Main Street, City',
      phone: '9876543219',
      contactInfo: 'cityhospital@gmail.com',
    ),
    Hospital(
        hospitalId: 101,
        hospitalName: 'Sunset Hospital',
        address: '456 Elm Street, Town',
        phone: '3214567897',
        contactInfo: 'sunsethospital@gmail.com'),
    Hospital(
        hospitalId: 102,
        hospitalName: 'Mountain View Hospital',
        address: '789 Oak Avenue, Mountain View',
        phone: '7894561237',
        contactInfo: "mountainviewhospital@gmail.com"),
    // Add more dummy hospital data as needed
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XXXXXX'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.shade100,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            color: Colors.grey[300],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome XXXXX,',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                Icon(
                  Icons.location_on_outlined,
                  size: 28,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Book Appointments',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: dummyHospitals.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DoctorBookingScreen(),
                    ));
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://i.pinimg.com/236x/07/b5/ff/07b5ff2a8a2ab5dd7d29f31d5d73835e.jpg',
                          height: 130,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          dummyHospitals[index].hospitalName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Column(
                          children: [
                            const Text(
                              'Specialization: ',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                dummyHospitals[index].address,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
