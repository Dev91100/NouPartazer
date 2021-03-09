import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Devashish/components/FieldTitle.dart';
import 'package:NouPartazer_App/Devashish/components/SubTitle.dart';
import 'package:NouPartazer_App/Devashish/components/TextFields.dart';
import 'package:NouPartazer_App/Devashish/components/TheOutlinedButtons.dart';
import 'package:NouPartazer_App/Devashish/components/UploadImage.dart';
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
          appBar: PageTitle(text: 'CREATE STORY',),
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

