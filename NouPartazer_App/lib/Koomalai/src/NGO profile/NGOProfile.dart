
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/bottomSheetWidget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:NouPartazer_App/Atish/Pages/NGOProfile/EditIconButton.dart';
import 'package:NouPartazer_App/Atish/Pages/NGOProfile/EditPhotoButton.dart';
import 'package:NouPartazer_App/Atish/Pages/Story/StoryModelProfile.dart';
import 'package:NouPartazer_App/Atish/Pages/NGOProfile/SectionTitle.dart';
import 'package:NouPartazer_App/Atish/components/CustomDivider.dart';
import 'package:NouPartazer_App/Atish/components/LongText.dart';

class NGOProfile extends StatelessWidget
{

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
                          image: AssetImage('assets/JPEG/ManzerPartazerGroup.jpg'),
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
                        
                        child: EditPhotoButton(BottomSheetWidget()),
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
                        width: 150,
                        height: 150,

                        decoration: BoxDecoration
                        (
                          image: DecorationImage
                          (
                            image: AssetImage("assets/JPEG/Rectangle 12.jpg"),
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
                          
                          child: EditPhotoButton(BottomSheetWidget())
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
                        bottom: 10,
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

                    StoryModelProfile(),
                  ],
                ),
                
                CustomDivider(),

                Column
                (
                  children:
                  [
                    Row
                    (
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Expanded(
                          child: SectionTitle
                          (
                            title: 'Manzer Partazer Manzer Partazer Manzer Partazer Manzer Partazer',
                            top: 15,
                            fontSize: 25,
                            R: 0, G: 50, B: 193, O: 1,
                          ),
                        ),
                        
                        EditIconButton
                        (
                          openPage: Settings(),
                          isModalPage: false,
                          icon: Icons.create_outlined,
                          height: 40,
                          width: 40,
                          left: 10,
                          top: 15,
                          right: 20,
                          bottom: 10,
                          size: 26,
                        ),
                      ],
                    ),

                    SectionTitle
                    (
                      title: 'Food Sharing Project of Mauritius Mauritius Mauritius',
                      fontSize: 22, 
                      top: 15,
                      R: 51, G: 51, B: 51, O: 1,
                    ),

                    LongText
                    (
                      title: "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it!"
                            "We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
                      fontSize: 18,
                      
                    ),

                    
                  ],
                ),

              ],
            ),

      //                 Container
      //                 (
      //                   margin: EdgeInsets.only(left:25.0,right:30.0),

      //                   child: Text
      //                   (
      //                     "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it!"
      //                         "We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
      //                     style: TextStyle(
      //                       fontSize: 16.0,

      //                       color: Colors.black54,
      //                     ),
      //                     textAlign: TextAlign.justify,
      //                   ),

      //                 ),
      //                 //added end
      //                 SizedBox
      //                 (
      //                   width: 25.0,
      //                   height:40.0,
      //                 ),

      //                 Row
      //                 (
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children:
      //                   [
      //                     SizedBox
      //                     (
      //                       width: 25.0,
      //                     ),

      //                     Text
      //                     (
      //                       "CONTACT INFO ",

      //                       style: TextStyle
      //                       (
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Colors.black,
      //                       ),
      //                     ),

      //                     SizedBox
      //                     (
      //                       width: 150.0,
      //                     ),

      //                     InkWell
      //                     (
      //                       child: Icon
      //                       (
      //                         Icons.create_outlined,
      //                         size: 25.0,
      //                         color: Colors.black,
      //                       ),
      //                       onTap: () {},
      //                     ),
      //                   ],
      //                 ),

      //                 SizedBox
      //                 (
      //                   width: 25.0,
      //                   height:20,
      //                 ),

      //                 Row
      //                 (
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children:
      //                     [
      //                       SizedBox
      //                       (
      //                         width: 25.0,
      //                       ),

      //                       Icon
      //                       (
      //                         Icons.language_outlined
      //                       ),

      //                       SizedBox
      //                       (
      //                         width: 10.0,
      //                       ),

      //                       InkWell
      //                       (
      //                         child: Text
      //                         (
      //                           "manzerpartazer.org",

      //                           style: TextStyle
      //                           (
      //                             fontSize: 16.0,
      //                             color: Color.fromRGBO(41, 90, 245, 1),
                                  
      //                             decoration: TextDecoration.underline,
      //                           ),

      //                         ),
      //                         onTap: () {openurl();},
      //                       ),
      //                     ]
      //                 ),

      //                 SizedBox
      //                 (
      //                   width: 25.0,
      //                   height:20,
      //                 ),

      //                 Row
      //                 (
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children:
      //                     [

      //                       SizedBox
      //                       (
      //                         width: 25.0,
      //                       ),

      //                       Icon
      //                       (
      //                         Icons.mail_outline,
      //                       ),

      //                       SizedBox
      //                       (
      //                         width: 10.0,
      //                       ),


      //                       InkWell
      //                       (
      //                         child: Text
      //                         (
      //                           "info@manzerpartazer.org",
      //                           style: TextStyle
      //                           (
      //                             fontSize: 16.0,
      //                             color: Color.fromRGBO(41, 90, 245, 1),         
      //                             decoration: TextDecoration.underline,
      //                           ),
      //                         ),
      //                         onTap: () {},
      //                       ),
      //                     ]
      //                 ),

      //                 SizedBox
      //                 (
      //                   width: 25.0,
      //                   height:20,
      //                 ),
      //                 Row
      //                 (
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children:
      //                     [
      //                       SizedBox
      //                       (
      //                         width: 25.0,
      //                       ),

      //                       Icon
      //                       (
      //                         Icons.phone,
      //                       ),

      //                       SizedBox
      //                       (
      //                         width: 10.0,
      //                       ),


      //                       InkWell
      //                       (
      //                         child: Text(
      //                           "+230 5820 7691",
      //                           style: TextStyle(
      //                             fontSize: 16.0,
      //                             color: Color.fromRGBO(41, 90, 245, 1),
      //                             decoration: TextDecoration.underline,
      //                           ),
      //                         ),
      //                       ),
      //                     ]
      //                 ),

      //                 SizedBox
      //                 (
      //                   height: 30.0,
      //                 ),

      //                 Row
      //                 (
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children:
      //                   [
      //                     SizedBox
      //                     (
      //                       width: 25.0,
      //                     ),

      //                     Text
      //                     (
      //                       "MEMBERS",
      //                       style: TextStyle
      //                       (
      //                         fontSize: 22.0,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),

      //                     SizedBox
      //                     (
      //                       width: 5.0,
      //                     ),
      //                     InkWell
      //                     (
      //                       child: Icon
      //                       (
      //                         Icons.info_outline,
      //                         size: 22.0,
      //                         color: Colors.black54,
      //                       ),
      //                       onTap: () {},
      //                     ),

      //                     SizedBox
      //                     (
      //                       width: 160.0,
      //                     ),

      //                     InkWell
      //                     (
      //                       child: Icon
      //                       (
      //                         Icons.add_circle_outline,
      //                         size: 22.0,
      //                         color: Colors.black54,
      //                       ),
      //                       onTap: () {},
      //                     ),
      //                   ],
      //                 ),

      //                 SizedBox
      //                 (
      //                   height: 1.0,
      //                 ),

      //                 Container
      //                 (
      //                   height: 100.0,
      //                   width: 400,
      //                   child: Card(
      //                     // color: Color.fromRGBO(245, 197, 41, 1),
      //                     margin: EdgeInsets.symmetric
      //                     (
      //                       horizontal: 10.0,
      //                       vertical: 10.0
      //                     ),

      //                     elevation: 5.0,
      //                     child: Padding
      //                     (
      //                       padding: const EdgeInsets.all(0.0),
      //                       child: Row
      //                       (
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children:
      //                         [
      //                           Container
      //                           (
      //                             margin: EdgeInsets.only
      //                             (
      //                               bottom: 0.0,
      //                               top: 5.0,
      //                               left:8.0
      //                             ),
      //                             width: 70.0,
      //                             height: 70.0,
      //                             decoration: BoxDecoration
      //                             (
      //                               image: DecorationImage
      //                               (
      //                                 image: AssetImage("assets/JPEG/Photo.jpg"),
      //                                 fit: BoxFit.cover,
      //                               ),
      //                               borderRadius: BorderRadius.circular(80.0),
      //                             ),
      //                           ),

      //                           SizedBox
      //                           (
      //                             height: 20.0,
      //                             width:20.0,
      //                           ),

      //                           Column
      //                           (
      //                               crossAxisAlignment: CrossAxisAlignment.start,
      //                               children:
      //                               [
      //                                 Text
      //                                 (
      //                                   "Julia Venn",
      //                                   style: TextStyle
      //                                   (
      //                                     fontSize: 18.0,
      //                                     color: Color.fromRGBO(41, 90, 245, 1),
      //                                     fontWeight: FontWeight.bold,
      //                                   ),
      //                                 ),

      //                                 Text
      //                                 (
      //                                   "Co-founder and",
      //                                   style: TextStyle
      //                                   (
      //                                     fontSize: 15.0,
      //                                     color: Color.fromRGBO(41, 90, 245, 1),
      //                                   ),
      //                                 ),

      //                                 Text
      //                                 (
      //                                   "Magadascar Coordinator",
      //                                   style: TextStyle
      //                                   (
      //                                     fontSize: 15.0,
      //                                     color: Color.fromRGBO(41, 90, 245, 1),
      //                                   ),
      //                                 ),
      //                               ]
      //                           ),

      //                           SizedBox
      //                           (
      //                             width: 15.0,
      //                             height: 20.0,
      //                           ),


      //                           InkWell
      //                           (
      //                             child: Icon
      //                             (
      //                               Icons.create_outlined,
      //                               size: 22.0,
      //                               color: Colors.black54,
      //                             ),
      //                             onTap: () {},
      //                           ),

      //                           SizedBox
      //                           (
      //                             width: 5.0,
      //                           ),
      //                           InkWell
      //                           (
      //                             child: Icon
      //                             (
      //                               Icons.clear,
      //                               size: 22.0,
      //                               color: Colors.black54,
      //                             ),
      //                             onTap: () {},
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ),

      //                 SizedBox
      //                 (
      //                   height: 30.0,
      //                   width:20.0,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ]
      //     ),
      // ]
      // )
        
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

class GetClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    var path = Path();
    path.lineTo(0.0, size.height / 2.2);
    path.lineTo(size.width + 125.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return true;
  }
}
