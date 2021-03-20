import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxGetImage.dart';

class CreateStory extends StatefulWidget
{
  @override
  _CreateStoryState createState() => _CreateStoryState();
}

class _CreateStoryState extends State<CreateStory>
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
                        title: 'STORY INFORMATION',
                        left: 0,
                      ),
                    ),

                    CustomTextField
                    (
                      labelText: 'Title',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Description',
                      hasSuffixIcon: false,
                      hasMultiline: true,
                      maxLines: 5,
                    ),

                    CustomTextField
                    (
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

