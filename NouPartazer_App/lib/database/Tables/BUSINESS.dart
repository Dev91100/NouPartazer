class BUSINESS
{
  int businessID;
  String brn;
  String companyName;
  String businessName;
  String website;
  String contactNumber;

  BUSINESS
  (
    {
      this.businessID,
      this.brn,
      this.companyName,
      this.businessName,
      this.website,
      this.contactNumber
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['businessID']    = businessID;
    mapping['brn']           = brn;
    mapping['companyName']   = companyName;
    mapping['businessName']  = businessName;
    mapping['website']       = website;
    mapping['contactNumber'] = contactNumber;
    mapping['website']       = website;

    return mapping;
  }
}