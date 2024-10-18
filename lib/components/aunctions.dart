import 'package:flutter/material.dart';
import 'package:test/data/auctions_data.dart';

import 'package:test/models/auctions_model.dart';



class AunctionsScreen extends StatefulWidget {
  const AunctionsScreen({super.key});

  @override
  State<AunctionsScreen> createState() => _AunctionsScreenState();
}

class _AunctionsScreenState extends State<AunctionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 16.0), 
      decoration: BoxDecoration(
        color: Colors.white, 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), 
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
                'Auctions ending soon', 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
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
            height: 250, 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: auctionsData.length, 
              itemBuilder: (context, index) {
                double screenWidth = MediaQuery.of(context).size.width;
                AuctionsData auctionData = auctionsData[index];
    
                return Container(
                  width: screenWidth * 0.45,  decoration: BoxDecoration(
                    color: Colors.transparent, 
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.transparent, 
                      width: 2, 
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                 
                      const SizedBox(height: 8), 
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8), 
                        child: Image.asset(
                          auctionData.imagePath,
                          height: 160, 
                          width: 160, 
                          fit: BoxFit.cover, 
                        ),
                      ),
                      const SizedBox(height: 8), 
                      Text(
                      auctionData.description, 
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black, 
                        ),
                         maxLines: 2, 
                          overflow: TextOverflow.ellipsis,  
                        textAlign: TextAlign.left, 
                      ),
                      const SizedBox(height: 4), 
                      Row(
                        children: [
                          RichText(
                                 text:  TextSpan(
                                 text: auctionData.detail,
                                   style: const TextStyle(
                                     fontSize: 14,
                                     color: Colors.black,
                                   ),
                                   children: <TextSpan>[
                                     TextSpan(
                                       text: auctionData.sscript,
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
                      Text(auctionData.detail2,
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
