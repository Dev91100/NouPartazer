class STATE
{
  int stateID;
  String stateName;

  STATE
  (
    {
      this.stateID,
      this.stateName
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['stateID']   = stateID;
    mapping['stateName'] = stateName;

    return mapping;
  }
}