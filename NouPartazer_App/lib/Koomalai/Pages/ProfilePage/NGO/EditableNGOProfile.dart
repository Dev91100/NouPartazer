import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/ProfilePage/NGO/NGOProfileModel.dart';


class EditableNGOProfile extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return NGOProfileModel(isEditable: true,);
  }
}
