import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onChanged; 
  const SearchBarWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05 ),
        child: Row(
            children: [
               Expanded(
                 child: TextField(
                  
                         decoration: InputDecoration(
                           filled: true, // Fill the text field with a color
  fillColor: Colors.grey.shade300, 
                      hintText: 'Search File',
                      border: OutlineInputBorder(
                      
                        borderRadius: BorderRadius.circular(12.0), // Rounded corners
                        borderSide:  BorderSide(color: Colors.grey.shade200, width: 1.0), // Gray border
                      ),
                     focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(color: Colors.grey.shade300, 
 width: 1.5), // Lighter grey color
),
enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(color: Colors.grey.shade300,
 width: 1.0), // Lighter grey color
),
                    contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08),
                     prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05), // Padding for the icon
                        child: Image.asset(
                          'assets/images/magnifying-glass-icon.png',
                           width: 24.0, // Set a size for the icon
                    height: 24.0, 
                        ),
                        
                      ),
                    ),
                       onChanged:onChanged  ,
                      ),
               ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),// Spacing between search bar and bell icon
             
               IconButton(
                icon: Icon(Icons.notifications_outlined, size: MediaQuery.of(context).size.width * 0.08),
                onPressed: () {
                   // Define what happens when the bell icon is pressed
                 },
              ),
          ],
        ),
      );
  }
}