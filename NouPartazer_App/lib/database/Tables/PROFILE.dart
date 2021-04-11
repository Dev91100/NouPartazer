class PROFILE
{
  int profileID;
  int ngoID;
  int businessID;
  String email;
  String password;
  String description;

  PROFILE
  (
    {
      this.profileID,
      this.ngoID,
      this.businessID,
      this.email,
      this.password,
      this.description
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['profileID']   = profileID;
    mapping['ngoID']       = ngoID;
    mapping['businessID']  = businessID;
    mapping['email']       = email;
    mapping['password']    = password;
    mapping['description'] = description;

    return mapping;
  }
}