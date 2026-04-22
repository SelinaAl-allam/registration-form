import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String? username;
  final String? password;
  final String? email;
  final String? fullName;
  final String? phone;
  final String? address;
  final String? bio;
  final bool? rememberMe;
  final String? gender;
  final String? country;
  final String? maritalStatus;
  final String? university;
  final String? specialization;
  final double? age;
  final DateTime? selectedDate;

  const OutputScreen({
    super.key,
    this.username,
    this.password,
    this.email,
    this.fullName,
    this.phone,
    this.address,
    this.bio,
    this.rememberMe,
    this.gender,
    this.country,
    this.maritalStatus,
    this.university,
    this.specialization,
    this.age,
    this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    String formattedDate = selectedDate != null
        ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
        : "Not selected";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Output'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Selina Alalam',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Submitted Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Full Name: ${fullName ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Username: ${username ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Password: ${password ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Email: ${email ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Phone: ${phone ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Address: ${address ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('University: ${university ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Specialization: ${specialization ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Bio: ${bio ?? "Not provided"}'),
                      const SizedBox(height: 8),
                      Text('Remember Me: ${rememberMe == true ? "Yes" : "No"}'),
                      const SizedBox(height: 8),
                      Text('Gender: ${gender ?? "Not selected"}'),
                      const SizedBox(height: 8),
                      Text('Country: ${country ?? "Not selected"}'),
                      const SizedBox(height: 8),
                      Text('Marital Status: ${maritalStatus ?? "Not selected"}'),
                      const SizedBox(height: 8),
                      Text('Age: ${age?.round() ?? "Not selected"}'),
                      const SizedBox(height: 8),
                      Text('Selected Date: $formattedDate'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                color: Colors.blue.shade50,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Thank you for submitting the form successfully.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Go Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}