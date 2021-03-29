import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxGetImage.dart';
import 'package:noupartazer_app/Devashish/components/DateTask.dart';
import 'package:noupartazer_app/Yashna/Pages/StatementDialog/EventCreated.dart';

class CreateEvent extends StatefulWidget
{
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController locationNameCtrl, locationAddressCtrl, eventTypeCtrl, eventDescriptionCtrl, dateOfEventCtrl;

  bool processing = false;

  bool perishableValue    = false;
  bool nonPerishableValue = false;

  Task task = new Task();
  DateTime selectedDate = DateTime.now();

  // Date Picker
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
          "${picked.toLocal().month}/${picked.toLocal().day}/${picked.toLocal().year}";
      dateOfEventCtrl.text = date;
    });
  }

  @override
  void initState()
  {
    super.initState();
    
    locationNameCtrl     = new TextEditingController();
    locationAddressCtrl  = new TextEditingController();
    eventTypeCtrl        = new TextEditingController();
    eventDescriptionCtrl = new TextEditingController();
    dateOfEventCtrl      = new TextEditingController();
  }

  bool setValidatorTest()
  {
    bool validatorTest;

    try
    {
      validatorTest = _formKey.currentState.validate();
    } catch (e)
    {
      validatorTest = false;
    }

    return validatorTest;
  }

  void showErrorToast()
  {
    Fluttertoast.showToast
    (
      msg: "Please fill in all fields.",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  Future createEventFunction() async
  {
    var test = setValidatorTest();

    if(test != true)
    {
      showErrorToast();
      return;
    }

    setState(()
    {
      processing = true;
    });

    var uri  = Uri.parse("https://foodsharingapp.000webhostapp.com/CreateEvent.php");
    var data = 
    {
      "locationName"     : locationNameCtrl.text,
      "locationAddress"  : locationAddressCtrl.text,
      "eventType"        : eventTypeCtrl.text,
      "eventDescription" : eventDescriptionCtrl.text,
      "dateOfEvent"      : dateOfEventCtrl.text,
      "perishable"       : perishableValue.toString(),
      "nonPerishable"    : nonPerishableValue.toString(),
      "orgID"            : 'bus1234' + '/',
    };

    var res = await http.post(uri, body:data);

    if(jsonDecode(res.body) == "true")
    {
      var eventCreatedDialog = new EventCreated().displayDialog(context);

      showDialog
      (
        context: context,
        builder: (BuildContext context)
        {
          return eventCreatedDialog;
        }
      );
    }
    else
    {
      Fluttertoast.showToast
      (
        msg: "Server error",
        toastLength: Toast.LENGTH_SHORT,
      );
    }

    setState(()
    {
      processing = false;
    });
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
            margin: EdgeInsets.symmetric(horizontal: Global().smallPageMargin),

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
                    SectionTitle
                    (
                      text: 'EVENT INFORMATION',
                      margin: EdgeInsets.only(bottom: Global().mediumSpacing),
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

                    //Checkboxes
                    CheckboxListTile
                    (
                      dense: true,
                      contentPadding: EdgeInsets.all(0),

                      title: Text
                      (
                        'Perishable Food',
                        style: TextStyle
                        (
                          fontSize: Global().normalText,
                        ),
                      ),
                      value: perishableValue,
                      onChanged: (newValue)
                      {
                        setState(()
                        {
                          perishableValue = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(bottom: Global().smallSpacing), //Override
                      child: CheckboxListTile
                      (
                        dense: true,
                        contentPadding: EdgeInsets.all(0),

                        title: Text
                        (
                          'Non-Perishable Food',
                          style: TextStyle
                          (
                            fontSize: Global().normalText,
                          ),
                        ),
                        value: nonPerishableValue,
                        onChanged: (newValue)
                        {
                          setState(()
                          {
                            nonPerishableValue = newValue;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: Global().smallSpacing),
                      child: DottedBoxGetImage()
                    ),

                    Container
                    (
                      width: constraints.maxWidth,
                      child: LargeCustomButtonIconText
                      (
                        text: 'Create Event',
                        hasIcon: false,
                        processing: processing,
                        onSuperPress: createEventFunction,
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

