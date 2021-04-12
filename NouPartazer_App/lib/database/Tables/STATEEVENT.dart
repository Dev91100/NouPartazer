class STATEEVENT
{
  int eventID;
  int ngoID;
  int stateID;

  STATEEVENT
  (
    {
      this.eventID,
      this.ngoID,
      this.stateID
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['ngoID']     = eventID;
    mapping['regNumber'] = ngoID;
    mapping['regName']   = stateID;

    return mapping;
  }
}