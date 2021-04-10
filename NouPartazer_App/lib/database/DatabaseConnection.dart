import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection
{
  setDatabase() async
  {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_foodsharing_sqflite');
    var database = await openDatabase(path, version: 1, onCreate: _onCreateDatabase);
    
    return database;
  }

  _onCreateDatabase(Database database, int version) async
  {
    await database.execute("CREATE TABLE BUSINESS (businessID bigint(20) PRIMARY KEY,brn varchar(20),companyName varchar(80),businessName varchar(80),website varchar(80) DEFAULT NULL,contactNumber varchar(8))");

    await database.execute("CREATE TABLE EVENT (eventID bigint(20) PRIMARY KEY,businessID bigint(20) DEFAULT NULL,foodTypeID bigint(20) DEFAULT NULL,locationName varchar(50) DEFAULT NULL,locationAddress varchar(50) DEFAULT NULL,eventType varchar(50) DEFAULT NULL,eventDescription text DEFAULT NULL,dateOfEvent varchar(15) DEFAULT NULL,image text DEFAULT NULL,QRCode varchar(200) DEFAULT NULL, FOREIGN KEY (businessID) REFERENCES BUSINESS (businessID) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (foodTypeID) REFERENCES FOODTYPE (foodTypeID) ON DELETE CASCADE ON UPDATE CASCADE)");

    await database.execute("CREATE TABLE FOODTYPE (foodTypeID bigint(20) PRIMARY KEY,foodType varchar(50))");

    await database.execute("CREATE TABLE MEMBER (memberID bigint(20) PRIMARY KEY,profileID bigint(20),title varchar(10),name varchar(50),surname varchar(50),position varchar(100),image text, FOREIGN KEY (profileID) REFERENCES PROFILE (profileID) ON DELETE CASCADE ON UPDATE CASCADE)");

    await database.execute("CREATE TABLE NGO (ngoID bigint(20) PRIMARY KEY,regNumber varchar(20),regName varchar(100),ngoExpertise varchar(200),memberSize int(11),address varchar(150),website varchar(100) DEFAULT NULL,title varchar(20),name varchar(80),surname varchar(80),position varchar(150),contactNumber varchar(8))");

    await database.execute("CREATE TABLE PROFILE (profileID bigint(20) PRIMARY KEY,ngoID bigint(20) DEFAULT NULL,businessID bigint(20) DEFAULT NULL,email varchar(50),password varchar(100) DEFAULT NULL,description text DEFAULT NULL, FOREIGN KEY (ngoID) REFERENCES NGO (ngoID) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (businessID) REFERENCES BUSINESS (businessID) ON DELETE CASCADE ON UPDATE CASCADE)");

    await database.execute("CREATE TABLE STATE (stateID bigint(20) PRIMARY KEY,stateName varchar(50))");

    await database.execute("CREATE TABLE STATE_EVENT (eventID bigint(20) PRIMARY KEY,ngoID bigint(20),stateID bigint(20), FOREIGN KEY (eventID) REFERENCES EVENT (eventID) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (stateID) REFERENCES STATE (stateID) ON DELETE CASCADE ON UPDATE CASCADE)");

    await database.execute("CREATE TABLE STORY (storyID bigint(20) PRIMARY KEY,profileID bigint(20) DEFAULT NULL,title varchar(50),description text,tag varchar(30),image text DEFAULT NULL, FOREIGN KEY (profileID) REFERENCES PROFILE (profileID) ON DELETE CASCADE ON UPDATE CASCADE)");
  }
}