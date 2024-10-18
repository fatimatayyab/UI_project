import 'package:flutter/material.dart';

import 'package:test/data/liveshows_data.dart';
import 'package:test/models/liveshows_model.dart';



class LiveShowsScreen extends StatefulWidget {
  const LiveShowsScreen({super.key});

  @override
  State<LiveShowsScreen> createState() => _LiveShowsScreenState();
}

class _LiveShowsScreenState extends State<LiveShowsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.all(16.0), // Add padding around the container
      decoration: BoxDecoration(
        color: Colors.black, // Background color of the container
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
                'Live Shows', // Change the title if needed
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
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
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),

                ),
              ),
            ],
          ),
          const SizedBox(height: 10), // Adds spacing between the Row and ListView
          SizedBox(
            height: 430, // Adjust the height based on your design
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: liveShows.length, // Number of items
              itemBuilder: (context, index) {
                double screenWidth = MediaQuery.of(context).size.width;
                LiveShows liveShow = liveShows[index];

                return Container(
                  width: screenWidth * 0.6,
                  margin: const EdgeInsets.symmetric(horizontal: 8), // Adds space between containers
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
                  
                      Text(
                        liveShow.title, // Title text
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Text color
                        ),
                      ),
                      const SizedBox(height: 8), // Spacing between title and image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Rounded corners for the image
                        child: Image.asset(
                          liveShow.imagePath, // Image path
                          height: 350, // Set the height of the image
                          width: double.infinity, // Take full width
                          fit: BoxFit.cover, // Cover the container
                        ),
                      ),
                      const SizedBox(height: 8), // Spacing between image and description
                      Text(
                        liveShow.description, // Description text
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white, // Text color
                        ),
                        textAlign: TextAlign.center, // Center align text
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
