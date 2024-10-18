import 'package:flutter/material.dart';
import 'package:test/components/activities.dart';
import 'package:test/components/aunctions.dart';
import 'package:test/components/icon_label.dart';
import 'package:test/components/invite_banner.dart';
import 'package:test/components/live_shows.dart';
import 'package:test/components/search_bar.dart';
import 'package:test/components/seller.dart';
import 'package:test/components/trending.dart';
import 'package:test/components/upcoming_shows.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   void _onSearchChanged(String value) {
    // Handle the search input changes here
   // Example of handling search input
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body:  SingleChildScrollView(
        child: Column(
          children: [
            
        Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: SearchBarWidget(onChanged: _onSearchChanged),
        ),
            const SizedBox(height: 6),
             Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
               child: const Row(
                 children:[
                 
                  Expanded(
                  flex: 4,
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: IconLabelWidget(icon: Icons.brightness_5, label: 'Brightness')),
                      Expanded(child: IconLabelWidget(icon: Icons.search_outlined, label: 'Recover')),
                      Expanded(child: IconLabelWidget(icon: Icons.brightness_5, label: 'Brightness')),
                      Expanded(child: IconLabelWidget(icon: Icons.search_outlined, label: 'Recover')),
                    ],
                 ),
                ),
                 Expanded(
                     flex: 2, // This part will take 1/3 of the space
                     child: SizedBox(), // This creates an empty space
                         ),
               ] 
                        ),
             ),
        
            const Divider(),
            const SizedBox(height: 8.0,),
           
        Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: const ActivitiesSection(),
        ),
            const SizedBox(height: 20.0,),
        const LiveShowsScreen(),
          // Add your image here
            const SizedBox(height: 20.0), // Optional spacing
            Padding(
               padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Image.asset(
                'assets/images/banner.png', // Replace with your image path
                height: 100, // Set height as needed
                fit: BoxFit.cover, // Adjust the fit as necessary
              ),
            ),
               const SizedBox(height: 30.0,),
               const UpcomingShowsScreen(),
               const AunctionsScreen(),
               const Trending(),
               Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                 child: const SellerWidget(),
                
               ),
               Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03,vertical: MediaQuery.of(context).size.height * 0.02),

                 child: const InviteBanner(),
               )

          ] 
          ),
      ),
         bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 201, 33, 243), // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        showUnselectedLabels: true, // Show labels for unselected items
      ),

    );

} }