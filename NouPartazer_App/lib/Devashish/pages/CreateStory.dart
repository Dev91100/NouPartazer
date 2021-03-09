import 'package:flutter/material.dart';
import 'package:flutter_practice/Atish/components/PageTitle.dart';
import 'package:flutter_practice/components/FieldTitle.dart';
import 'package:flutter_practice/components/SubTitle.dart';
import 'package:flutter_practice/components/TextFields.dart';
import 'package:flutter_practice/components/TheOutlinedButtons.dart';
import 'package:flutter_practice/components/UploadImage.dart';
// import 'package:google_fonts/google_fonts.dart';

class CreateStory extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final _storyTitleController = TextEditingController();
  final _storyDescriptionController = TextEditingController();
  final _storyTagsController = TextEditingController();
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
                child: PageTitle(title: 'CREATE STORY',)
              ),

              Container
              (
                margin: EdgeInsets.only
                (
                  right: constraints.maxWidth * 0.062,
                  left: constraints.maxWidth * 0.062,
                  // bottom: constraints.maxHeight * 0.02,
                ),
                child: SubTitle(subTitle: 'STORY INFORMATION', )
              ),

              Container
              (
                child: FieldTitle(fieldTitle: 'Title'),
              ),

              Container
              (
                child: TextFields(textFieldControllerName: _storyTitleController, ),
              ),
              
          
              Container
              (
                child: FieldTitle(fieldTitle: 'Description',),
              ),

              Container
              (
                child: TextFields
                (
                  textFieldControllerName: _storyDescriptionController, 
                  fieldHeight: 0.11,
                  maxLines: 4, 
                )
              ),

              Container
              (
                child: FieldTitle(fieldTitle: 'Tags',),
              ),
              
              Container
              (
                child: TextFields(textFieldControllerName: _storyTagsController,),
              ),

              SizedBox(height: constraints.maxHeight * 0.03,),

              UploadImage(),

              TheOutlinedButtons(message: 'Create Story',)
            ],
            ),   
          ),
        );
      }
    );
  }
}

