import 'package:flutter/material.dart';
import 'package:test/data/activities_data.dart';
import 'package:test/models/activity_model.dart';

class ActivitiesSection extends StatefulWidget {
  const ActivitiesSection({super.key});

  @override
  State<ActivitiesSection> createState() => _ActivitiesSectionState();
}

class _ActivitiesSectionState extends State<ActivitiesSection> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                const Text(
                  'Activities',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ), 
                ),
                GestureDetector(
                  onTap: () {
                  
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
          height: 150, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: activities.length, 
            itemBuilder: (context, index) {
               double screenWidth = MediaQuery.of(context).size.width;
                Activity activity = activities[index]; 

              return Container(
               width: screenWidth * 0.6,  
                margin: const EdgeInsets.symmetric(horizontal: 8), 
                decoration:BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12), 
        border: Border.all(
          color: Colors.grey.shade200, 
          width: 2, 
        ),
      ), 
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, 
                       crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                           ClipRRect(
                           borderRadius: BorderRadius.circular(12),
                           child: Image.asset(
                             activity.imagePath,
                             width: 90,
                             height: 90,
                             fit: BoxFit.cover,
                           ),
                          ),
                      
                        ],
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Row(
                             children: [
                               const Icon(Icons.emoji_events, color: Color.fromARGB(255, 205, 169, 10), size: 18),
                              const SizedBox(width: 5),
                               Text(
                              activity.title,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                         ),
                          const SizedBox(height: 5),
                        
                           Text(
                              activity.description,
                             style: const TextStyle(
                               fontSize: 11,
                               color: Colors.black,
                             ),
                           ),
                          const SizedBox(height: 5),
                          RichText(
                             text:  TextSpan(
                             text: activity.detail,
                               style: const TextStyle(
                                 fontSize: 14,
                                 color: Colors.black,
                               ),
                               children: <TextSpan>[
                                 TextSpan(
                                   text: activity.sscript,
                                   style: const TextStyle(
                                     fontSize: 6,
                                     color: Colors.black,
                                     fontFeatures: [FontFeature.superscripts()],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                            ElevatedButton(onPressed: () {},
                           style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(8), 
                               ),
                               backgroundColor: const Color.fromARGB(255, 105, 38, 240), 
                             ),
                            child: Text( activity.bText,
                               
                               style: const TextStyle(
                                 color: Colors.white,
                                 fontSize: 12,
                               ),
                             ), )

                      ],
                    )
                  ],
                )
               
              
              );
            },
          ),
        ),
      ],
    );
    
        
  }
}