class NGO
{
  int ngoID;
  String regNumber;
  String regName;
  String ngoExpertise;
  int memberSize;
  String address;
  String website;
  String title;
  String surname;
  String position;
  String contactNumber;

  NGO
  (
    {
      this.ngoID,
      this.regNumber,
      this.regName,
      this.ngoExpertise,
      this.memberSize,
      this.address,
      this.website,
      this.title,
      this.surname,
      this.position,
      this.contactNumber,
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['ngoID']         = ngoID;
    mapping['regNumber']     = regNumber;
    mapping['regName']       = regName;
    mapping['ngoExpertise']  = ngoExpertise;
    mapping['memberSize']    = memberSize;
    mapping['address']       = address;
    mapping['website']       = website;
    mapping['title']         = title;
    mapping['surname']       = surname;
    mapping['position']      = position;
    mapping['contactNumber'] = contactNumber;

    return mapping;
  }

}