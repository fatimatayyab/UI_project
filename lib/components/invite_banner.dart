import 'package:flutter/material.dart';

class InviteBanner extends StatelessWidget {
  const InviteBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.blue, // First color
            Color.fromARGB(255, 181, 191, 204), // Second color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between texts and button
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Text(
                'Invite a friend',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                ),
              ),
       
              Text(
                'Bid and win with your friends',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Text color
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Reduced button padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded button
              ),
         
            ),
            child: const Text(
              'invite',
              style: TextStyle(
                color: Colors.blue, // Button text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
