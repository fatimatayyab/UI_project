import 'package:flutter/material.dart';

import 'package:test/data/upcomingshow_data.dart';
import 'package:test/models/upcomingshows_model.dart';



class UpcomingShowsScreen extends StatefulWidget {
  const UpcomingShowsScreen({super.key});

  @override
  State<UpcomingShowsScreen> createState() => _UpcomingShowsScreenState();
}

class _UpcomingShowsScreenState extends State<UpcomingShowsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      padding: const EdgeInsets.all(16.0), // Add padding around the container
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the container
        // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns content to the left and right
            children: [
              const Text(
                'Upcoming Shows', // Change the title if needed
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ), // Customize font size and weight
              ),
              GestureDetector(
                onTap: () {
                  // Handle tap
                },
                child: const Text(
                  'Show All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
    
                ),
              ),
            ],
          ),
          const SizedBox(height: 10), // Adds spacing between the Row and ListView
          SizedBox(
            height: 350, // Adjust the height based on your design
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: upcomingShows.length, // Number of items
              itemBuilder: (context, index) {
                double screenWidth = MediaQuery.of(context).size.width;
                UpcomingShows upcomingShow = upcomingShows[index];
    
                return Container(
                  width: screenWidth * 0.45,
                  margin: const EdgeInsets.symmetric(horizontal: 0), // Adds space between containers
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Container color
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    border: Border.all(
                      color: Colors.transparent, // Greyish border color
                      width: 2, // Border thickness
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                     Row(
      children: [
    Container(
      width: 8,  // Size of the red dot
      height: 8,
      decoration: const BoxDecoration(
        color: Color.fromARGB(124, 206, 51, 40),  // Red color
        shape: BoxShape.circle,  // Makes the container circular
      ),
    ),
    const SizedBox(width: 4),  // Small space between the dot and text
    Text(
      upcomingShow.title,  // Title text
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,  // Text color
      ),
    ),
      ],
    ),
                      const SizedBox(height: 8), // Spacing between title and image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Rounded corners for the image
                        child: Image.asset(
                          upcomingShow.imagePath, // Image path
                          height: 240, // Set the height of the image
                          width: 160, // Take full width
                          fit: BoxFit.cover, // Cover the container
                        ),
                      ),
                      const SizedBox(height: 8), // Spacing between image and description
                      Text(
                      upcomingShow.description, // Description text
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black, // Text color
                        ),
                         maxLines: 2,  // Allow up to 2 lines
                          overflow: TextOverflow.ellipsis,  
                        textAlign: TextAlign.left, // Center align text
                      ),
                      const SizedBox(height: 4), // Spacing between image and description
                      Text(
                      upcomingShow.detail, // Description text
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold // Text color
                        ),
                         
                        textAlign: TextAlign.left, // Center align text
                      ),
                    ],
                  )
                
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
