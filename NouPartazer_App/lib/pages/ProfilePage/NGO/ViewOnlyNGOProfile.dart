import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/ProfilePage/NGO/NGOProfileModel.dart';


class ViewOnlyNGOProfile extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return NGOProfileModel(isEditable: false,);
  }
}
