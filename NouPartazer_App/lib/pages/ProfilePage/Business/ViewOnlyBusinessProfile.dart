import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/ProfilePage/Business/BusinessProfileModel.dart';


class ViewOnlyBusinessProfile extends StatelessWidget
{


  @override
  Widget build(BuildContext context)
  {
    return BusinessProfileModel(isEditable: false,);
  }
}