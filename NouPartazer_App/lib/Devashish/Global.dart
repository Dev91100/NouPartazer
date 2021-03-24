// import 'package:noupartazer_app/Devashish/Global.dart';
// (fontSize != null) ? fontSize: Global().profileSectionTitle
class Global
{
  //Font Sizes
  double smallText = 15;
  double normalText = 16;                 //list of NGO&Event counter
  double mediumText = 17;
  double largeText = 18;
// normalIcon
// middleIcon
// largeIcon

// yellowTitle
// pageTitle
  double largeButtonIconText = 18;        //Located in LargeButtonIconText.dart-->Used for SignIn,SignUp,Skip,Login Buttons
  double orgButtonIcon = 55;              //Used in SignUp page for OrgButtons
  double orgButtonText = 30;              //Used in SignUp page for Orgbuttons
  
  double yellowTitle = 40;                //Used in the those pages: SignIn, SignUp, Forgot Password, Registration
  double yellowTitlePara = 20;            //Used in the those pages: SignIn, SignUp, Forgot Password
  // double normalText = 16;                 //The default font for paragraphs usually, Also used for time and date(Icons also resize automatically)==>IconText.dart
  double normalTextIcon;                  //Usually for icons next to 'contact us'
  
  double storyTags = 15;                  //Tags for the story on the homescreen
  double storySubtitle = 21;              //Either for the event location or organisation name

  double profileSectionTitle = 18;        //Section Titles on the profile
  double profileSectionSubTitle1 = 18;    //A Subtitle for the description of the NGO/Business
  double profileOrganizationName = 20;    //Used in profile pages(NGO and Business)     
  double memberName = 16;                 //Member name in the members list
  
  double statusIndicator = 16;            //BlackBox with 'Status' written on it(Used in Tasks page and (Donation page>Event))
  double statusValue = 16;                //Font for showing the current status(Pending, unassigned, etc...)
  double tagsInDonationPage = 16;         //Tag in donation page=The type of event
  double donationPageTagIcons = 18;       //Food type icons in NGO Donation page
  double donationTimeAndLocation = 15;    //NGO Donation page-->Text and Icon for date and location of event
  
  double settingsTitle = 16;              //Title for each setting
  double settingsSubTitle = 13;           //Subtitle for each setting
  double settingsIcon = 30;               //Icon for each setting
  double settingsChangePWButton = 18;     //Font for the change password button

  double registerButton = 20;             //used in NGO and business registration

  double businessPOVstoryTitle = 23;      //Used in the Business POV for story title
}

