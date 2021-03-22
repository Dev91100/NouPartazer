import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/ProfilePage/Business/BusinessProfileModel.dart';


class EditableBusinessProfile extends StatelessWidget
{


  @override
  Widget build(BuildContext context)
  {
    return BusinessProfileModel(isEditable: true,);
  }
}