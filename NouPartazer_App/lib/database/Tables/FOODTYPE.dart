class FOODTYPE
{
  int foodTypeID;
  String foodType;

  FOODTYPE
  (
    {
      this.foodTypeID,
      this.foodType
    }
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['foodTypeID'] = foodTypeID;
    mapping['foodType']   = foodType;

    return mapping;
  }
}