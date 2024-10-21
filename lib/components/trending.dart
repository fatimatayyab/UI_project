import 'package:flutter/material.dart';
import 'package:test/data/trending_data.dart';
import 'package:test/models/trending_model.dart';




class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding around the container
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              const Text(
                'Trending', // Change the title if needed
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
          const SizedBox(height: 10), 
          SizedBox(
            height: 250, 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingsData.length, // Number of items
              itemBuilder: (context, index) {
                double screenWidth = MediaQuery.of(context).size.width;
            TrendingData trendingData = trendingsData[index];     
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
                  
        
                      const SizedBox(height: 8), // Spacing between title and image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Rounded corners for the image
                        child: Image.asset(
                        trendingData.imagePath, // Image path
                          height: 160, // Set the height of the image
                          width: 160, // Take full width
                          fit: BoxFit.cover, // Cover the container
                        ),
                      ),
                      const SizedBox(height: 8), // Spacing between image and description
                      Text(
                      trendingData.description, // Description text
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black, // Text color
                        ),
                         maxLines: 2,  // Allow up to 2 lines
                          overflow: TextOverflow.ellipsis,  
                        textAlign: TextAlign.left, // Center align text
                      ),
                      const SizedBox(height: 4), // Spacing between image and description
                      Row(
                        children: [
                          RichText(
                                 text:  TextSpan(
                                 text: trendingData.detail,
                                   style: const TextStyle(
                                     fontSize: 14,
                                     color: Colors.black,
                                   ),
                                   children: <TextSpan>[
                                     TextSpan(
                                       text: trendingData.sscript,
                                       style: const TextStyle(
                                         fontSize: 6,
                                         color: Colors.black,
                                         fontFeatures: [FontFeature.superscripts()],
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                        ],
                      ),
                      Text(trendingData.detail2,
                      textAlign: TextAlign.right,),
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
