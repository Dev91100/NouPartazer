class MEMBER
{
  int memberID;
  int profileID;
  String title;
  String name;
  String surname;
  String position;
  String image;

  MEMBER
  (
    {
      this.memberID,
      this.profileID,
      this.title,
      this.name,
      this.surname,
      this.position,
      this.image
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['memberID']  = memberID;
    mapping['profileID'] = profileID;
    mapping['title']     = title;
    mapping['name']      = name;
    mapping['surname']   = surname;
    mapping['position']  = position;
    mapping['image']     = image;

    return mapping;
  }
}