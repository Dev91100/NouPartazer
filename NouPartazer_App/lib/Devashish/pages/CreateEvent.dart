import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Devashish/components/Checkboxes.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxGetImage.dart';

class CreateEvent extends StatefulWidget
{
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController locationNameCtrl, locationAddressCtrl, eventTypeCtrl, eventDescriptionCtrl, dateOfEventCtrl;

  @override
  void initState()
  {
    super.initState();
    
    locationNameCtrl = new TextEditingController();
    locationAddressCtrl = new TextEditingController();
    eventTypeCtrl = new TextEditingController();
    eventDescriptionCtrl = new TextEditingController();
    dateOfEventCtrl = new TextEditingController();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle
      (
        hasBackButton: true,
      ),
      body: LayoutBuilder
      (
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.only
            (
              left: 20,
              right: 20,
            ),
            child: SingleChildScrollView
            (
              clipBehavior: Clip.none,
              child: Form
              (
                key: _formKey,

                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Container
                    (
                      child: SectionTitle
                      (
                        title: 'EVENT INFORMATION',
                        left: 0,
                      ),
                    ),

                    CustomTextField
                    (
                      controller: locationNameCtrl,
                      keyboardType: TextInputType.name,
                      labelText: 'Location Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: locationAddressCtrl,
                      keyboardType: TextInputType.streetAddress,
                      labelText: 'Location Address',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: eventTypeCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Event Type',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: eventDescriptionCtrl,
                      labelText: 'Event Description',
                      hasSuffixIcon: false,
                      hasMultiline: true,
                      maxLines: 5,
                    ),

                    CustomTextField
                    (
                      controller: dateOfEventCtrl,
                      keyboardType: TextInputType.datetime,
                      labelText: 'Date of Event',
                      suffixIcon: Icons.date_range_outlined,
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: 10),
                      child: Checkboxes(option: 'Perishable Food')
                    ),

                    Checkboxes(option: 'Non-Perishable Food'),

                    Container
                    (
                      margin: EdgeInsets.only(top: 15),
                      child: DottedBoxGetImage()
                    ),

                    Container
                    (
                      padding: EdgeInsets.only
                      (
                        right: 15,
                        left: 15,
                        bottom: 40
                      ),
                      
                      margin: EdgeInsets.only(top: 30),
                      width: constraints.maxWidth,
                      child: LargeCustomButtonIconText
                      (
                        text: 'Create Event',
                        hasIcon: false,
                      )
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

