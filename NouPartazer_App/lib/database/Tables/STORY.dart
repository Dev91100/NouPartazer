class STORY
{
  int storyID;
  int profileID;
  String title;
  String description;
  String tag;
  String image;

  STORY
  (
    this.storyID,
    this.profileID,
    this.title,
    this.description,
    this.tag,
    this.image,
  );

  generateMap()
  {
    var mapping = Map<String, dynamic>();

    mapping['storyID']     = storyID;
    mapping['profileID']   = profileID;
    mapping['title']       = title;
    mapping['description'] = description;
    mapping['tag']         = tag;
    mapping['image']       = image;

    return mapping;
  }
}