import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxGetImage.dart';
import 'package:noupartazer_app/Yashna/Pages/StatementDialog/StoryCreated.dart';

class CreateStory extends StatefulWidget
{
  @override
  _CreateStoryState createState() => _CreateStoryState();
}

class _CreateStoryState extends State<CreateStory>
{
  final _formKey = GlobalKey<FormState>();

  TextEditingController titleCtrl, descriptionCtrl, tagCtrl;

  bool processing = false;

  @override
  void initState()
  {
    super.initState();
    
    titleCtrl = new TextEditingController();
    descriptionCtrl = new TextEditingController();
    tagCtrl = new TextEditingController();
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

  Future createStoryFunction() async
  {
    var test = setValidatorTest();

    if(test != true)
    {
      showErrorToast();
      return;
    }

    setState(() {
      processing = true;
    });

    var url = "https://foodsharingapp.000webhostapp.com/CreateStory.php";
    var data = 
    {
      "title" : titleCtrl.text,
      "description" : descriptionCtrl.text,
      "tag" : tagCtrl.text,
    };

    var res = await http.post(url, body:data);

    if(jsonDecode(res.body) == "true")
    {
      var storyCreatedDialog = new StoryCreated().displayDialog(context);

      showDialog
      (
        context: context,
        builder: (BuildContext context)
        {
          return storyCreatedDialog;
        }
      );

      Fluttertoast.showToast
      (
        msg: "Story created successfully.",
        toastLength: Toast.LENGTH_SHORT,
      );
    }
    else
    {
      Fluttertoast.showToast
      (
        msg: "Error.",
        toastLength: Toast.LENGTH_SHORT,
      );
    }

    setState(() {
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
        text: 'CREATE STORY',
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
                        text: 'STORY INFORMATION',
                      ),
                    ),

                    CustomTextField
                    (
                      controller: titleCtrl,
                      keyboardType: TextInputType.text,
                      fieldType: 'alpha',
                      labelText: 'Title',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: descriptionCtrl,
                      labelText: 'Description',
                      hasSuffixIcon: false,
                      hasMultiline: true,
                      maxLines: 5,
                    ),

                    CustomTextField
                    (
                      controller: tagCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Tags',
                      hasSuffixIcon: false,
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: 25),
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
                        text: 'Create Story',
                        processing: processing,
                        hasIcon: false,
                        onSuperPress: createStoryFunction,
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

