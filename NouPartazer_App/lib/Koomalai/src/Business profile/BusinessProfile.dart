
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:NouPartazer_App/Atish/components/EditIconButton.dart';
import 'package:NouPartazer_App/Atish/components/EditPhotoButton.dart';
import 'package:NouPartazer_App/Atish/components/SectionTitle.dart';
import 'package:NouPartazer_App/Atish/components/CustomDivider.dart';
import 'package:NouPartazer_App/Atish/components/LongText.dart';
import 'package:NouPartazer_App/Atish/components/SectionWithEditButton.dart';
import 'package:NouPartazer_App/Atish/components/ContactInfo.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStory.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/NGOStory/NGOStoryList.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/BusinessStory/BusinessStoryModelProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/bottomSheetWidget.dart';

class BusinessProfile extends StatelessWidget
{
  final List<NGOStory> ngoStory = ngoStoryList;

  @override
  Widget build(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: SingleChildScrollView
          (
            child: Column
            (
              children:
              [
                Stack
                (
                  children:
                  [
                    Container
                    (
                      width: screen.width,
                      height: screen.height * 0.3,
                      decoration: BoxDecoration
                      (
                        image: DecorationImage
                        (
                          image: AssetImage('assets/JPEG/Winners.jpg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow:
                        [
                          BoxShadow
                          (
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),

                      child: Align
                      (
                        alignment: Alignment.bottomRight,
                        
                        child: EditPhotoButton
                          (
                            openPage: BottomSheetWidget()
                          )
                      ),
                    ),

                    Center
                    (
                      child: Container
                      (
                        margin: EdgeInsets.only
                        (
                          top: constraints.maxHeight * 0.19
                        ),
                        width: constraints.maxWidth * 0.4,
                        height: constraints.maxWidth * 0.4,

                        decoration: BoxDecoration
                        (
                          image: DecorationImage
                          (
                            image: AssetImage('assets/JPEG/Jumbo.png'),
                            fit: BoxFit.cover,
                          ),

                          borderRadius: BorderRadius.circular(150),
                          boxShadow:
                          [
                            BoxShadow
                            (
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Align
                        (
                          alignment: Alignment.bottomRight,
                          
                          child: EditPhotoButton
                          (
                            openPage: BottomSheetWidget()
                          )
                        ),
                      ),
                    ),

                    Container
                    (
                      alignment: Alignment.bottomRight,

                      margin: EdgeInsets.only
                      (
                        top: screen.height * 0.31,
                      ),
                      child: EditIconButton
                      (
                        openPage: Settings(),
                        isModalPage: false,
                        icon: Icons.settings_outlined,
                        height: 50,
                        width: 50,
                        left: 10,
                        top: 10,
                        right: 20,
                        bottom: constraints.maxHeight * 0.015,
                        size: 35,
                      ),
                    ),
                  ],
                ),

                Column
                (
                  children:
                  [
                    SectionTitle
                    (
                      title: 'MY STORIES',
                    ),

                    BusinessStoryModelProfile(),
                  ],
                ),
                
                CustomDivider(),

                Column
                (
                  children:
                  [
                    SectionWithEditButton
                    (
                      title: 'Manzer Partazer Test Test Test Test',
                      fontSize: 22,
                      R: 0, G: 50, B: 193, O: 1,
                      openPage: Settings(),
                    ),
                    
                    Align
                    (
                      alignment: Alignment.centerLeft,
                      child: Container
                      (
                        width: screen.width * 0.9,
                        child: SectionTitle
                        (
                          title: 'Food Sharing Project of Mauritius Mauritius Mauritius',
                          fontSize: 20, 
                          top: 15,
                          R: 51, G: 51, B: 51, O: 1,
                        ),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: 10,
                        left: 20,
                        right: 20
                      ),
                      constraints: BoxConstraints
                      (
                        maxHeight: constraints.maxHeight * 0.25,
                      ),
                      child: LongText
                      (
                        title: "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it!"
                              "We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        top: screen.height * 0.015,
                      ),
                    ),
                  ],
                ),

                CustomDivider(),

                Container
                (
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column
                  (
                    children:
                    [
                      SectionWithEditButton
                      (
                        title: 'CONTACT INFO',
                        openPage: Settings(),
                      ),

                      ContactInfo
                      (
                        title: 'manzerpartazer.org',
                        top: 0,
                        icon: Icons.language_outlined,
                      ),
                      
                      ContactInfo
                      (
                        title: 'info@manzerpartazer.org',
                        icon: Icons.email_outlined,
                      ),

                      ContactInfo
                      (
                        title: '+230 5820 7691',
                        icon: Icons.call_outlined,
                      )
                    ],
                  ),
                ),
              ],
            ),   
          )
        );
      }
    );
  }

  openurl()
  {
    String url1="https://manzerpartazer.org/";
    launch(url1);
  }
}


// import 'package:NouPartazer_App/Koomalai/src/BusinessSettings/Setting.dart';
// import 'package:NouPartazer_App/Koomalai/src/widget/bottomSheetWidget.dart';
// import 'package:NouPartazer_App/Koomalai/src/widget/foodCategoryStories.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

//     class BusinessProfile extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           SingleChildScrollView(

//             padding: const EdgeInsets.all(0.0),

//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//              Positioned(
//             width: MediaQuery.of(context).size.width,
//         top: MediaQuery.of(context).size.height / 6.0,

//             child: Column(
//             children: <Widget>[
//               Stack(
//                   children: <Widget>[
//                     Container(
//                       margin: EdgeInsets.only(bottom: 0.0,top: 20.0),
//                       width: 360.0,
//                       height: 200.0,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("assets/JPEG/jumbo.jpg"),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.circular(0.0),
//                       ),
//                     ),

//                     Positioned(
//                       bottom: 20.0,
//                       right: 20.0,
//                       child: InkWell(
//                         child: Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 28.0,
//                         ),
//                         onTap: () {
//                           showModalBottomSheet(
//                               context: context,
//                               builder: ((builder) => BottomSheetWidget()));
//                         },
//                       ),
//                     ),
//                     Column(
//                       children: <Widget>[
//                         Stack(
//                           children: <Widget>[
//                             Container(
//                               margin: EdgeInsets.only(bottom: 0.0,top: 20.0),
//                               width: 360.0,
//                               height: 200.0,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage("assets/JPEG/jumbo.png"),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 borderRadius: BorderRadius.circular(0.0),
//                               ),
//                             ),

//                             Positioned(
//                               bottom: 20.0,
//                               right: 20.0,
//                               child: InkWell(
//                                 child: Icon(
//                                   Icons.camera_alt,
//                                   color: Colors.white,
//                                   size: 28.0,
//                                 ),
//                                 onTap: () {
//                                   showModalBottomSheet(
//                                       context: context,
//                                       builder: ((builder) => BottomSheetWidget()));
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),


//                     Positioned(     
//                       child: Column(
//                         children: <Widget>[
//                           Stack(
//                             children: <Widget>[
//                               Container(
//                                 margin: EdgeInsets.only(bottom: 0.0,top: 130.0),
//                                 width: 135.0,
//                                 height: 135.0,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage("assets/PNG/jumbo logo.png"),
//                                     fit: BoxFit.cover,
//                                   ),
//                                   borderRadius: BorderRadius.circular(80.0),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 10.0,
//                                       color: Colors.black45,
//                                       offset: Offset(3.0, 4.0),

//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 20.0,
//                                 right: 20.0,
//                                 child: InkWell(
//                                   child: Icon(
//                                     Icons.camera_alt,
//                                     color: Colors.white,
//                                     size: 28.0,
//                                   ),
//                                   onTap: () {
//                                     showModalBottomSheet(
//                                         context: context,
//                                         builder: ((builder) => BottomSheetWidget()));
//                                   },
//                                 ),
//                               ),
//                             ],
//                           ),

//                           Container(
//                             alignment: Alignment.centerRight,

//                             margin: EdgeInsets.only(top:0.0),
//                             child: IconButton(
//                               icon: Icon (Icons.settings_outlined),
//                               iconSize: 30.0,
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) {
//                                       return BusinessSettings();
//                                     },
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),

//                           SizedBox(
//                             height: 18.0,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               SizedBox(
//                                 width: 25.0,
//                               ),

//                               Text(
//                                 "AT A GLANCE",
//                                 style: TextStyle(
                                  
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10.0,
//                               ),
//                               InkWell(
//                                 child: Icon(
//                                   Icons.info_outline,
//                                   size: 22.0,
//                                   color: Colors.black54,
//                                 ),
//                                 onTap: () {},
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10.0,

//                           ),


//                           FoodCategoryStories(),


//                           SizedBox(
//                             height: 0.0,
//                           ),

//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               SizedBox(
//                                 width: 25.0,
//                               ),


//                               Text(
//                                 "Jumbo Supermarket",

//                                 style: TextStyle(
//                                   fontSize: 25.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromRGBO(41, 90, 245, 1),
//                                 ),

//                               ),

//                               SizedBox(
//                                 width: 70.0,
//                               ),
//                               InkWell(
//                                 child: Icon(
//                                   Icons.create_outlined,
//                                   size: 25.0,
//                                   color: Colors.black,
//                                 ),
//                                 onTap: () {},
//                               ),


//                             ],
//                           ),

//                           SizedBox(
//                             height: 10.0,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               SizedBox(
//                                 width: 25.0,
//                               ),
//                               Text(
//                                 "Best supermarket chain",
//                                 style: TextStyle(
//                                   fontSize: 20.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black54,
//                                 ),
//                               ),
//                             ],
//                           ),

//                           SizedBox(
//                             height: 10.0,
//                           ),

//                           SizedBox(
//                             width: 10.0,
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(left:25.0,right:30.0),

//                             child: Text(
//                               "Jumbo is the supermarket chain that has democratized mass distribution, becoming the preferred supermarket for Mauritian households. A subsidiary of the IBL group, Jumbo supermarkets have been present on the island since 1994, and are the first to have opened a supermarket in a rural area.",
//                               style: TextStyle(
//                                 fontSize: 16.0,

//                                 color: Colors.black54,
//                               ),
//                               textAlign: TextAlign.justify,
//                             ),

//                           ),
//                           //added end


//                           SizedBox(
//                             width: 25.0,
//                             height:40.0,
//                           ),

//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               SizedBox(
//                                 width: 25.0,
//                               ),


//                               Text(
//                                 "CONTACT INFO ",

//                                 style: TextStyle(
//                                   fontSize: 20.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
                                  
//                                 ),

//                               ),

//                               SizedBox(
//                                 width: 150.0,
//                               ),
//                               InkWell(
//                                 child: Icon(
//                                   Icons.create_outlined,
//                                   size: 25.0,
//                                   color: Colors.black,
//                                 ),
//                                 onTap: () {},
//                               ),


//                             ],
//                           ),

//                           SizedBox(
//                             width: 25.0,
//                             height:20,
//                           ),
//                           Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: <Widget>[

//                                 SizedBox(
//                                   width: 25.0,
//                                 ),
//                                 Icon(
//                                     Icons.language_outlined
//                                 ),


//                                 SizedBox(
//                                   width: 10.0,
//                                 ),

//                                 InkWell(
//                                   child: Text(
//                                     "WWW.jumbo.mu",

//                                     style: TextStyle(
//                                       fontSize: 16.0,
//                                       color: Color.fromRGBO(41, 90, 245, 1),
                                      
//                                       decoration: TextDecoration.underline,
//                                     ),

//                                   ),
//                                   onTap: () {openurl();},
//                                 ),
//                               ]
//                           ),

//                           SizedBox(
//                             width: 25.0,
//                             height:20,
//                           ),

//                           Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: <Widget>[

//                                 SizedBox(
//                                   width: 25.0,
//                                 ),

//                                 Icon(
//                                   Icons.mail_outline,
//                                 ),

//                                 SizedBox(
//                                   width: 10.0,
//                                 ),


//                                 InkWell(
//                                   child: Text(
//                                     "jumbo@gmail.com",
//                                     style: TextStyle(
//                                       fontSize: 16.0,
//                                       color: Color.fromRGBO(41, 90, 245, 1),
                                      
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),
//                                   onTap: () {},
//                                 ),
//                               ]
//                           ),

//                           SizedBox(
//                             width: 25.0,
//                             height:20,
//                           ),
//                           Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: <Widget>[
//                                 SizedBox(
//                                   width: 25.0,
//                                 ),

//                                 Icon(
//                                   Icons.phone,

//                                 ),

//                                 SizedBox(
//                                   width: 10.0,
//                                 ),


//                                 InkWell(
//                                   child: Text(
//                                     "+230 5758 0236",
//                                     style: TextStyle(
//                                       fontSize: 16.0,
//                                       color: Color.fromRGBO(41, 90, 245, 1),
                                      
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),

//                                 ),
//                               ]
//                           ),
//                           SizedBox(
//                             height: 30.0,
//                           ),
//                         ],
//                       ),
//                     )
//                   ]
//               ),
//             ]
//         )
//     ),
//     ]
//     )
//           )
//         ]
//     )
//     );

//   }

//   openurl(){
//     String url1="WWW.jumbo.mu";
//     launch(url1);
//   }

//   Container _buildDivider() {
//     return Container(
//       margin: const EdgeInsets.symmetric(
//         horizontal: 8.0,
//       ),
//       width: double.infinity,
//       height: 1.0,
//       color: Colors.grey.shade400,
//     );
//   }

// }

// class GetClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height / 2.2);
//     path.lineTo(size.width + 125.0, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }


// }
