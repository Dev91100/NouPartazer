import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/ContainerIconText.dart';
import 'package:noupartazer_app/Atish/components/ContainerText.dart';
import 'package:noupartazer_app/Atish/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/CardIconText.dart';
import 'package:noupartazer_app/Atish/components/LongText.dart';
import 'package:noupartazer_app/Atish/components/CardListTileText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';
import 'package:noupartazer_app/Yashna/Pages/DonationEventDialog/AcceptDonation.dart';

class EventDetails extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var screen = MediaQuery.of(context).size;
    var statement = AcceptDonation().displayDialog(context);

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          appBar: PageTitle
          (
            hasBackButton: true,
            text: 'EVENT DETAILS',
            barColor: Color.fromRGBO(242, 242, 242, 1),
          ),

          body: Column
          (
            children:
            [
              Container
              (
                padding: EdgeInsets.only
                (
                  bottom: Global().mediumSpacing,
                ),
                width: screen.width,
                decoration: BoxDecoration
                (
                  color: Color.fromRGBO(242, 242, 242, 1),
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

                child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    Container
                    (
                      width: constraints.maxWidth * 0.2,
                      height: constraints.maxWidth * 0.2,

                      decoration: BoxDecoration
                      (
                        image: DecorationImage
                        (
                          image: AssetImage("assets/JPEG/ManzerPartazerLogo.jpg"),
                          fit: BoxFit.cover,
                        ),

                        borderRadius: BorderRadius.circular(150),
                        boxShadow:
                        [
                          BoxShadow
                          (
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: Global().mediumSpacing),
                      child: SectionTitle
                      (
                        text: 'GROCERY DONATION',
                        align: Alignment.center,
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: Global().mediumSpacing),
                      child: Row
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          ContainerIconText
                          (
                            text: 'Status',
                            icon: Icons.online_prediction_outlined,
                            margin: EdgeInsets.only(right: 15),
                            iconColor: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          ContainerText
                          (
                            text: 'Unassigned',
                            borderWidth: 1.5,
                            textColor: Color.fromRGBO(245, 197, 41, 1),
                            borderColor: Color.fromRGBO(245, 197, 41, 1),
                            boxColor: Color.fromRGBO(255, 248, 97, 0.2),
                            padding: EdgeInsets.only(left: 40, right: 40),
                          ),
                        ],
                      ),
                    ),

                    Container
                    (
                      child:SmallButtonIconText
                      (
                        text: 'Accept Donation',
                        icon: Icons.download_done_outlined,
                        buttonColor: Color.fromRGBO(245, 197, 41, 1),
                        elevation: 2,
                        hasBorder: false,
                        isPopUpPage: true,
                        onPress: statement,
                      ),
                    ),
                  ],
                ),
              ),

              Flexible
              (
                child: Container
                (
                  margin: EdgeInsets.symmetric
                  (
                    horizontal: Global().smallPageMargin,
                  ),
                  child: ListView
                  (
                    children:
                    [
                      Container
                      (
                        margin: EdgeInsets.only(top: Global().mediumSpacing),
                        child: SectionTitle
                        (
                          text: 'DATE & TIME',
                        ),
                      ),

                      Container
                      (
                        child: Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            CardIconText
                            (
                              constraints: constraints,
                              text: '19/01/2021',
                              icon: Icons.event_outlined,        
                            ),

                            CardIconText
                            (
                              constraints: constraints,
                              text: '19.00-22.00',
                              icon: Icons.query_builder,                            
                            ),
                          ]
                        ),
                      ),

                      Container
                      (
                        margin: EdgeInsets.only(top: Global().mediumSpacing),
                        child: SectionTitle
                        (
                          text: 'FOOD TYPE',
                        ),
                      ),
                      
                      Container
                      (
                        child: Row
                        (
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          [
                            CardIconText
                            (
                              constraints: constraints,
                              text: 'Perishable',
                              textColor: Color.fromRGBO(255, 255, 255, 1),
                              icon: Icons.no_food,
                              iconColor: Color.fromRGBO(255, 255, 255, 1),
                              cardColor: Color.fromRGBO(255, 84, 62, 1),                            
                            ),

                            CardIconText
                            (
                              constraints: constraints,
                              text: 'Non-Perishable',
                              textColor: Color.fromRGBO(255, 255, 255, 1),
                              icon: Icons.fastfood,
                              iconColor: Color.fromRGBO(255, 255, 255, 1),
                              cardColor: Color.fromRGBO(27, 215, 65, 1),                          
                            ),
                          ]
                        ),
                      ),

                      Container
                      (
                        margin: EdgeInsets.only(top: Global().mediumSpacing),
                        child: SectionTitle
                        (
                          text: 'DESCRIPTION',
                        ),
                      ),

                      Container
                      (
                        constraints: BoxConstraints
                        (
                          maxHeight: constraints.maxHeight * 0.25,
                        ),
                        child: Card
                        (
                          color: Color.fromRGBO(248, 248, 248, 1),
                          // margin: const EdgeInsets.all(20),
                          child: Container
                          (
                            margin: const EdgeInsets.all(10),
                            child: LongText
                            (
                              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius lectus et ante sollicitudin mattis. Morbi maximus maximus mi, non porttitor quam cursus sit amet. Vivamus in nunc id massa pretium elementum sed eu risus. Cras in ante ac nunc pretium imperdiet at a nisi. Cras placerat quis turpis a porttitor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi varius lectus et ante sollicitudin mattis. Morbi maximus maximus mi, non porttitor quam cursus sit amet. Vivamus in nunc id massa pretium elementum sed eu risus. Cras in ante ac nunc pretium imperdiet at a nisi. Cras placerat quis turpis a porttitor.',
                            ),
                          ),
                        ),
                      ),

                      Container
                      (
                        margin: EdgeInsets.only(top: Global().mediumSpacing),
                        child: SectionTitle
                        (
                          text: 'LOCATION',
                        ),
                      ),

                      Row
                      (
                        children:
                        [
                          Expanded
                          (
                            child: Container
                            (
                              child: CardListTileText
                              (
                                constraints: constraints,
                                title: 'Jumbo Phoenix',
                                subtitle: 'Hypermarket',
                                icon: Icons.location_on_outlined,
                                cardColor: Color.fromRGBO(245, 197, 41, 1),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox
                      (
                        height: Global().mediumSpacing,
                      ),
                    ]
                  ),
                ),
              ),
            ],
          )
        );
      }
    );
  }
}
