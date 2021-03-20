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
                      labelText: 'Location Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Location Address',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Event Type',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Event Description',
                      hasSuffixIcon: false,
                      hasMultiline: true,
                      maxLines: 5,
                    ),

                    CustomTextField
                    (
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

