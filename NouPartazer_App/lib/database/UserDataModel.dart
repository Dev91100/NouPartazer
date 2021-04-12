class UserDataModel
{
  int primaryID;
  int userID;

  UserDataModel
  (
    {
      this.primaryID,
      this.userID,
    }
  );

  userDataMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['primaryID'] = primaryID;
    mapping['userID'] = userID;

    return mapping;
  }

}