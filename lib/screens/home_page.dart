
import 'package:flutter/material.dart';
import '../model/hospital_model.dart';
import 'doctor_booking_screen.dart';

class HomePage extends StatelessWidget {
  final List<Hospital> dummyHospitals = [
    Hospital(
      name: 'City Hospital',
      location: '123 Main Street, City',
      specializations: ['General Medicine','ENT'],
    ),
    Hospital(
      name: 'Sunset Hospital',
      location: '456 Elm Street, Town',
      specializations: ['Pediatrics'],
    ),
    Hospital(
      name: 'Mountain View Hospital',
      location: '789 Oak Avenue, Mountain View',
      specializations: ['Orthopedics'],
    ),
    // Add more dummy hospital data as needed
  ];

   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XXXXXX'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            color: Colors.grey[300],
            child: Text(
              'Welcome XXXXX,',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: dummyHospitals.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://i.pinimg.com/236x/07/b5/ff/07b5ff2a8a2ab5dd7d29f31d5d73835e.jpg',
                          height: 130,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text(
                          dummyHospitals[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Column(
                          children: [
                            Text(
                              'Specialization: ',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,fontWeight: FontWeight.w500
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('${dummyHospitals[index].specializations}',maxLines: 2,)
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

//
// import 'package:flutter/material.dart';
// import '../model/hospital_model.dart';
// import 'doctor_booking_screen.dart';
//
// class HomePage extends StatelessWidget {
//   final List<Hospital> dummyHospitals = [
//     Hospital(
//       name: 'City Hospital',
//       location: '123 Main Street, City',
//       specializations: ['General Medicine', 'Cardiology'],
//     ),
//     Hospital(
//       name: 'Sunset Hospital',
//       location: '456 Elm Street, Town',
//       specializations: ['Pediatrics', 'Orthopedics'],
//     ),
//     Hospital(
//       name: 'Mountain View Hospital',
//       location: '789 Oak Avenue, Mountain View',
//       specializations: ['Orthopedics', 'Neurology'],
//     ),
//     // Add more dummy hospital data as needed
//   ];
//
//   HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(elevation: 10,
//         title: const Text('Appointments'),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
//             color: Colors.grey[300],
//             child: Text(
//               'Welcome XXXXX,',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Book Appointments',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               itemCount: dummyHospitals.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 16.0,
//                 crossAxisSpacing: 16.0,
//                 childAspectRatio: 0.6,
//               ),
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => DoctorBookingScreen(),
//                     ));
//                   },
//                   child: Card(
//                     elevation: 3,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.network(
//                           'https://i.pinimg.com/236x/07/b5/ff/07b5ff2a8a2ab5dd7d29f31d5d73835e.jpg',
//                           height: 130,
//                           width: 130,
//                           fit: BoxFit.cover,
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           dummyHospitals[index].name,
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           textAlign: TextAlign.center,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: 4),
//                         Wrap(
//                           alignment: WrapAlignment.center,
//                           spacing: 4,
//                           children: dummyHospitals[index].specializations
//                               .map(
//                                 (specializations) => Chip(
//                               label: Text(
//                                 specializations,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               backgroundColor: Colors.deepPurpleAccent,
//                             ),
//                           )
//                               .toList(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
