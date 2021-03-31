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
    await database.execute("CREATE TABLE `BUSINESS` (`businessID` bigint(20) NOT NULL,`brn` varchar(20) COLLATE utf8_unicode_ci NOT NULL,`companyName` varchar(80) COLLATE utf8_unicode_ci NOT NULL,`businessName` varchar(80) COLLATE utf8_unicode_ci NOT NULL,`website` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,`contactNumber` varchar(8) COLLATE utf8_unicode_ci NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `EVENT` (`eventID` bigint(20) NOT NULL,`businessID` bigint(20) DEFAULT NULL,`foodTypeID` bigint(20) DEFAULT NULL,`locationName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,`locationAddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,`eventType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,`eventDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,`dateOfEvent` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,`image` text COLLATE utf8_unicode_ci DEFAULT NULL,`QRCode` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,`createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `FOODTYPE` (`foodTypeID` bigint(20) NOT NULL,`foodType` varchar(50) COLLATE utf8_unicode_ci NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `MEMBER` (`memberID` bigint(20) NOT NULL,`profileID` bigint(20) NOT NULL,`title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,`name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,`surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,`position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,`image` text COLLATE utf8_unicode_ci NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `NGO` (`ngoID` bigint(20) NOT NULL,`regNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,`regName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,`ngoExpertise` varchar(200) COLLATE utf8_unicode_ci NOT NULL,`memberSize` int(11) NOT NULL,`address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,`website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,`title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,`name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,`surname` varchar(80) COLLATE utf8_unicode_ci NOT NULL,`position` varchar(150) COLLATE utf8_unicode_ci NOT NULL,`contactNumber` varchar(8) COLLATE utf8_unicode_ci NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `PROFILE` (`profileID` bigint(20) NOT NULL,`ngoID` bigint(20) DEFAULT NULL,`businessID` bigint(20) DEFAULT NULL,`email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,`password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,`description` text COLLATE utf8_unicode_ci DEFAULT NULL,`createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `STATE` (`stateID` bigint(20) NOT NULL,`stateName` varchar(50) COLLATE utf8_unicode_ci NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `STATE_EVENT` (`eventID` bigint(20) NOT NULL,`ngoID` bigint(20) NOT NULL,`stateID` bigint(20) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("CREATE TABLE `STORY` (`storyID` bigint(20) NOT NULL,`profileID` bigint(20) DEFAULT NULL,`title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,`description` text COLLATE utf8_unicode_ci NOT NULL,`tag` varchar(30) COLLATE utf8_unicode_ci NOT NULL,`image` text COLLATE utf8_unicode_ci DEFAULT NULL,`createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;");

    await database.execute("ALTER TABLE `BUSINESS` ADD PRIMARY KEY (`businessID`);");

    await database.execute("ALTER TABLE `EVENT` MODIFY `eventID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `FOODTYPE` MODIFY `foodTypeID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `MEMBER` MODIFY `memberID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `NGO` MODIFY `ngoID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `PROFILE` MODIFY `profileID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `STATE` MODIFY `stateID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `STORY` MODIFY `storyID` bigint(20) NOT NULL AUTO_INCREMENT;");

    await database.execute("ALTER TABLE `EVENT` ADD CONSTRAINT `EVENT_ibfk_1` FOREIGN KEY (`businessID`) REFERENCES `BUSINESS` (`businessID`) ON DELETE CASCADE ON UPDATE CASCADE, ADD CONSTRAINT `EVENT_ibfk_2` FOREIGN KEY (`foodTypeID`) REFERENCES `FOODTYPE` (`foodTypeID`) ON DELETE CASCADE ON UPDATE CASCADE;");

    await database.execute("ALTER TABLE `MEMBER` ADD CONSTRAINT `MEMBER_ibfk_1` FOREIGN KEY (`profileID`) REFERENCES `PROFILE` (`profileID`) ON DELETE CASCADE ON UPDATE CASCADE;");

    await database.execute("ALTER TABLE `PROFILE` ADD CONSTRAINT `PROFILE_ibfk_1` FOREIGN KEY (`ngoID`) REFERENCES `NGO` (`ngoID`) ON DELETE CASCADE ON UPDATE CASCADE, ADD CONSTRAINT `PROFILE_ibfk_2` FOREIGN KEY (`businessID`) REFERENCES `BUSINESS` (`businessID`) ON DELETE CASCADE ON UPDATE CASCADE;");

    await database.execute("ALTER TABLE `STATE_EVENT` ADD CONSTRAINT `STATE_EVENT_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `EVENT` (`eventID`) ON DELETE CASCADE ON UPDATE CASCADE, ADD CONSTRAINT `STATE_EVENT_ibfk_2` FOREIGN KEY (`stateID`) REFERENCES `STATE` (`stateID`) ON DELETE CASCADE ON UPDATE CASCADE;");

    await database.execute("ALTER TABLE `STORY` ADD CONSTRAINT `STORY_ibfk_1` FOREIGN KEY (`profileID`) REFERENCES `PROFILE` (`profileID`) ON DELETE CASCADE ON UPDATE CASCADE;");
  }
}