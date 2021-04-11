import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/components/Buttons/SmallCustomButtonIconText.dart';
import 'package:noupartazer_app/components/GetImage/EditMembersPhoto/MembersPhotoGetImage.dart';
import 'package:noupartazer_app/Pages/Dialogs/components/IconTextField.dart';

//This file builds a customizable model for editing members of an NGO

class EditMembersModel
{
  final _formKey = GlobalKey<FormState>();

  TextEditingController titleCtrl, nameCtrl, surnameCtrl, positionCtrl;

  bool processing = false;

  StatefulBuilder displayBottomSheet(BuildContext context)
  {
    var bottomSheet = StatefulBuilder
    (
      builder: (context, setState)
      {
        titleCtrl    = new TextEditingController();
        nameCtrl     = new TextEditingController();
        surnameCtrl  = new TextEditingController();
        positionCtrl = new TextEditingController();

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

        Future updateMemberInfoFunction() async
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

          var uri  = Uri.parse("https://foodsharingapp.000webhostapp.com/UpdateMemberInfo.php");
          var data = 
          {
            "memberID" : '1',
            "title"    : titleCtrl.text,
            "name"     : nameCtrl.text,
            "surname"  : surnameCtrl.text,
            "position" : positionCtrl.text,
            "orgID"    : 'reg1234' + '/',
          };

          var res = await http.post(uri, body:data);

          if(jsonDecode(res.body) == "true")
          {
            Fluttertoast.showToast
            (
              msg: "Update successful",
              toastLength: Toast.LENGTH_SHORT,
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
        return Container
        (
          margin: EdgeInsets.symmetric
          (
            horizontal: Global().tinyPageMargin,
            vertical  : Global().smallPageMargin,
          ),
          child: SingleChildScrollView
          (
            child: Form
            (
              key: _formKey,
              
              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children:
                [
                  MembersPhotoGetImage(),
                    
                  IconTextField
                  (
                    controller: titleCtrl,
                    keyboardType: TextInputType.name,
                    text: 'TITLE',
                    icon: Icons.title_outlined,
                  ),

                  IconTextField
                  (
                    controller: nameCtrl,
                    keyboardType: TextInputType.name,
                    text: 'NAME',
                    icon: Icons.perm_identity,
                  ),
                  
                  IconTextField
                  (
                    controller: surnameCtrl,
                    keyboardType: TextInputType.name,
                    text: 'SURNAME',
                    icon: Icons.perm_identity,
                  ),
                  
                  IconTextField
                  (
                    controller: positionCtrl,
                    keyboardType: TextInputType.text,
                    text: 'POSITION',
                    icon: Icons.work_outline,
                  ),

                  Container
                  (
                    margin: EdgeInsets.only(top: 15),
                    child: Row
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                      [
                        SmallButtonIconText
                        (
                          text: 'Cancel',
                          textDecoration: TextDecoration.underline,
                          textColor: Color.fromRGBO(102, 102, 102, 1),
                          buttonColor: Colors.transparent,
                          elevation: 0,
                          hasIcon: false,
                          isClose: true,
                          margin: EdgeInsets.only(right: Global().largeSpacing),
                        ),

                        SmallCustomButtonIconText
                        (
                          text: 'Save',
                          onSuperPress: updateMemberInfoFunction,
                          processing: processing,
                        ),
                      ],
                    ),
                  ),
                ]
              ),
            ),
          ),
        );
      }
    );

    return bottomSheet;
  }
}