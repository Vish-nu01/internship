import 'package:flutter/material.dart';

class HospitalSearchPage extends StatelessWidget {
  const HospitalSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Hospitals'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Search Input Field
            TextField(
              decoration: const InputDecoration(
                hintText: 'Search by name, location, or specialization',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // TODO: Implement search functionality
                // Update search results based on user input
              },
            ),
            const SizedBox(height: 16.0),
            // Search Button
            ElevatedButton(
              onPressed: () {
                // TODO: Implement search functionality
                // Perform search based on user input
              },
              child: const Text('Search'),
            ),
            const SizedBox(height: 16.0),
            // TODO: Display search results here
            // You can use a ListView to display search results
          ],
        ),
      ),
    );
  }
}
