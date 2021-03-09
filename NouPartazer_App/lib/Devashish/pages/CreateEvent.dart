import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_practice/components/FieldTitle.dart';
import 'package:flutter_practice/components/SubTitle.dart';
import 'package:flutter_practice/components/TextFields.dart';
import 'package:flutter_practice/components/TheOutlinedButtons.dart';
import 'package:flutter_practice/components/UploadImage.dart';
import 'package:flutter_practice/components/CheckBoxes.dart';
// import 'package:google_fonts/google_fonts.dart';

class CreateEvent extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final _locationNameController = TextEditingController();
  final _locationAddressController = TextEditingController();
  final _eventTypeController = TextEditingController();
  final _eventDescController = TextEditingController();
  final _dateOfEventsController = TextEditingController();

  @override
  Widget build(BuildContext context) 
  {
    // final screen = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: SingleChildScrollView
          (
            key: formKey, 
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [


              Container
              (
                margin: EdgeInsets.only
                (
                  right: constraints.maxWidth * 0.062,
                  left: constraints.maxWidth * 0.062,
                  // bottom: constraints.maxHeight * 0.02,
                ),
                child: SubTitle(subTitle: 'EVENT INFORMATION', )
              ),

              Container
              (
                child: FieldTitle(fieldTitle: 'Location Name'),
              ),

              Container
              (
                child: TextFields(textFieldControllerName: _locationNameController, ),
              ),
              
              Container
              (
                child: FieldTitle(fieldTitle: 'Location Address'),
              ),

              Container
              (
                child: TextFields(textFieldControllerName: _locationAddressController, ),
              ),

              Container
              (
                child: FieldTitle(fieldTitle: 'Event Type'),
              ),

              Container
              (
                child: TextFields(textFieldControllerName: _eventTypeController, ),
              ),

              Container
              (
                child: FieldTitle(fieldTitle: 'Event Description',),
              ),

              Container
              (
                child: TextFields
                (
                  textFieldControllerName: _eventDescController, 
                  fieldHeight: 0.11,
                  maxLines: 4, 
                )
              ),

              Container
              (
                child: FieldTitle
                (
                  fieldTitle: 'Date Of Events',
                ),
              ),
              
              Container
              (
                child: TextFields
                (
                  textFieldControllerName: _dateOfEventsController,
                  inputType: TextInputType.datetime,
                  thesuffixIcon: Icons.date_range,
                ),
              ),

              Container
              (
                child: FieldTitle
                (
                  fieldTitle: 'Food Type',
                ),
              ), 

              Container
              (
                child: Checkboxes(option: 'Perishable Food',),
              ),
              
              Container
              (
                child: Checkboxes(option: 'Non-Perishable Food',),
              ),

              SizedBox(height: constraints.maxHeight * 0.03,),

              UploadImage(),

              TheOutlinedButtons(message: 'Create Event',)
            ],
            ),   
          ),
        );
      }
    );
  }
}

