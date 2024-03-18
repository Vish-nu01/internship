import 'package:flutter/material.dart';

class DoctorAppointmentBooking extends StatefulWidget {
  @override
  _DoctorAppointmentBookingState createState() => _DoctorAppointmentBookingState();
}

class _DoctorAppointmentBookingState extends State<DoctorAppointmentBooking> {
  final List<Doctor> doctors = [
    Doctor(name: 'Dr. Alice Smith', specialization: 'Cardiology'),
    Doctor(name: 'Dr. Bob Johnson', specialization: 'Dermatology'),
    Doctor(name: 'Dr. Charlie Brown', specialization: 'Neurology'),
    // Add more doctors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Appointment Booking'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Two doctors per row
        childAspectRatio: 1.6, // Adjust aspect ratio for desired layout
        padding: EdgeInsets.all(16.0),
        children: doctors.map((doctor) => _buildDoctorCard(doctor)).toList(),
      ),
    );
  }

  Widget _buildDoctorCard(Doctor doctor) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DoctorDetailsPage(doctor: doctor)),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 4.0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightBlueAccent, Colors.tealAccent],
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                doctor.name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8.0),
              Text(
                doctor.specialization,
                style: TextStyle(fontSize: 16.0, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Doctor {
  final String name;
  final String specialization;

  Doctor({required this.name, required this.specialization});
}

class DoctorDetailsPage extends StatelessWidget {
  final Doctor doctor;

  const DoctorDetailsPage({Key? key, required this.doctor}) : super(key: key);

  // Implement UI for displaying doctor details (name, specialization, profile picture)
  // and a section for showing available time slots (consider using a calendar or list view)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${doctor.name} Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Doctor details section (image, name, specialization)
            Row(
              children: [
                // Doctor profile image
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/doctor_profile.png'), // Replace with actual image path
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      doctor.specialization,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.0),
            // Available time slots section (calendar view or list view with booking functionality)
            Text('Available Time Slots:'),
            // Replace with actual time slot display and booking logic
            Text('(Implement time slot display and booking functionality here)'),
          ],
        ),
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DoctorAppointmentBooking(),));
}