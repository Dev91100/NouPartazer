class EVENT
{
  int eventID;
  int businessID;
  int foodTypeID;
  String locationName;
  String locationAddress;
  String eventType;
  String eventDescription;
  String dateOfEvent;
  String image;
  String qrCode;

  EVENT
  (
    {
      this.eventID,
      this.businessID,
      this.foodTypeID,
      this.locationName,
      this.locationAddress,
      this.eventType,
      this.eventDescription,
      this.dateOfEvent,
      this.image,
      this.qrCode
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['eventID']          = eventID;
    mapping['businessID']       = businessID;
    mapping['foodTypeID']       = foodTypeID;
    mapping['locationName']     = locationName;
    mapping['locationAddress']  = locationAddress;
    mapping['eventType']        = eventType;
    mapping['eventDescription'] = eventDescription;
    mapping['dateOfEvent']      = dateOfEvent;
    mapping['image']            = image;
    mapping['qrCode']           = qrCode;

    return mapping;
  }
}