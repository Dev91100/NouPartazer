import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Devashish/components/Checkboxes.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxGetImage.dart';
import 'package:noupartazer_app/Devashish/pages/DateTask.dart';

class CreateEvent extends StatefulWidget
{
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController locationNameCtrl, locationAddressCtrl, eventTypeCtrl, eventDescriptionCtrl, dateOfEventCtrl;

  Task task = new Task();
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async
  {
    final DateTime picked = await showDatePicker
    (
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100)
    );

    if (picked != null && picked != selectedDate)
    setState(()
    {
      selectedDate = picked;
      var date =
          "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
      dateOfEventCtrl.text = date;
    });
}

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
        text: 'CREATE EVENT',
        barColor: Colors.white,
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
                        text: 'EVENT INFORMATION',
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

                    GestureDetector
                    (
                      onTap: () => _selectDate(context),
                      child: AbsorbPointer
                      (
                        child: CustomTextField
                        (
                          controller: dateOfEventCtrl,
                          keyboardType: TextInputType.datetime,
                          labelText: 'Date of Event',
                          suffixIcon: Icons.date_range_outlined,
                          onSaved: (val)
                          {
                            task.date = selectedDate;
                          },
                        ),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: 10),
                      child: Checkboxes
                      (
                        option: 'Perishable Food',
                      )
                    ),

                    Checkboxes
                    (
                      option: 'Non-Perishable Food',
                    ),

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

