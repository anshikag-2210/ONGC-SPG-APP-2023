import Foundation
import Combine
import CoreData
import SQLite3

struct scheduleStruct: Decodable {
    let AU_ID: String
    let AU_NAME: String
    let AU_ORGANIZATION: String
    let AU_WORKPROFILE: String
    let CMB_ID: String
    let EVT_COAUTHORS: String
    let EVT_ID: String
    let EVT_PAPER_EVENT_PAPERID: String
    let EVT_PAPER_ID: String
    let EVT_STATUS: String
    let EVT_TITLE: String
    let EVT_TYPE: String
    let SLOT_DATE: String
    let SLOT_DAY: String
    let SLOT_END: String
    let SLOT_ID: String
    let SLOT_START: String
    let SLOT_VENUE1: String
    let SLOT_VENUE2: String
    let SP_ID: String
    let SP_NAME: String
    let SP_ORGANIZATION: String
    let SP_WORKPROFILE: String
    let TH_ID: String
    let TH_THEME: String

 init(from decoder: Decoder) throws {
     let container = try decoder.container(keyedBy: CodingKeys.self)

     AU_ID = try container.decodeIfPresent(String.self, forKey: .AU_ID) ?? ""
     AU_NAME = try container.decodeIfPresent(String.self, forKey: .AU_NAME) ?? ""
     AU_ORGANIZATION = try container.decodeIfPresent(String.self, forKey: .AU_ORGANIZATION) ?? ""
     AU_WORKPROFILE = try container.decodeIfPresent(String.self, forKey: .AU_WORKPROFILE) ?? ""
     CMB_ID = try container.decodeIfPresent(String.self, forKey: .CMB_ID) ?? ""
     EVT_COAUTHORS = try container.decodeIfPresent(String.self, forKey: .EVT_COAUTHORS) ?? ""
     EVT_ID = try container.decodeIfPresent(String.self, forKey: .EVT_ID) ?? ""
     EVT_PAPER_EVENT_PAPERID = try container.decodeIfPresent(String.self, forKey: .EVT_PAPER_EVENT_PAPERID) ?? ""
     EVT_PAPER_ID = try container.decodeIfPresent(String.self, forKey: .EVT_PAPER_ID) ?? ""
     EVT_STATUS = try container.decodeIfPresent(String.self, forKey: .EVT_STATUS) ?? ""
     EVT_TITLE = try container.decodeIfPresent(String.self, forKey: .EVT_TITLE) ?? ""
     EVT_TYPE = try container.decodeIfPresent(String.self, forKey: .EVT_TYPE) ?? ""
     SLOT_DATE = try container.decodeIfPresent(String.self, forKey: .SLOT_DATE) ?? ""
     SLOT_DAY = try container.decodeIfPresent(String.self, forKey: .SLOT_DAY) ?? ""
     SLOT_END = try container.decodeIfPresent(String.self, forKey: .SLOT_END) ?? ""
     SLOT_ID = try container.decodeIfPresent(String.self, forKey: .SLOT_ID) ?? ""
     SLOT_START = try container.decodeIfPresent(String.self, forKey: .SLOT_START) ?? ""
     SLOT_VENUE1 = try container.decodeIfPresent(String.self, forKey: .SLOT_VENUE1) ?? ""
     SLOT_VENUE2 = try container.decodeIfPresent(String.self, forKey: .SLOT_VENUE2) ?? ""
     SP_ID = try container.decodeIfPresent(String.self, forKey: .SP_ID) ?? ""
     SP_NAME = try container.decodeIfPresent(String.self, forKey: .SP_NAME) ?? ""
     SP_ORGANIZATION = try container.decodeIfPresent(String.self, forKey: .SP_ORGANIZATION) ?? ""
     SP_WORKPROFILE = try container.decodeIfPresent(String.self, forKey: .SP_WORKPROFILE) ?? ""
     TH_ID = try container.decodeIfPresent(String.self, forKey: .TH_ID) ?? ""
     TH_THEME = try container.decodeIfPresent(String.self, forKey: .TH_THEME) ?? ""
 }

 // Define the CodingKeys enum to match your JSON keys
 enum CodingKeys: String, CodingKey {
     case AU_ID, AU_NAME, AU_ORGANIZATION, AU_WORKPROFILE, CMB_ID, EVT_COAUTHORS, EVT_ID, EVT_PAPER_EVENT_PAPERID, EVT_PAPER_ID, EVT_STATUS, EVT_TITLE, EVT_TYPE, SLOT_DATE, SLOT_DAY, SLOT_END, SLOT_ID, SLOT_START, SLOT_VENUE1, SLOT_VENUE2, SP_ID, SP_NAME, SP_ORGANIZATION, SP_WORKPROFILE, TH_ID, TH_THEME
 }
}
struct themeStruct: Codable {
    let CMB_ID: String
    let TH_CODE: String
    let TH_ID: String
    let TH_STATUS: String
    let TH_THEME: String
    let TH_TYPE: String
    let TH_VENUE: String
 init(from decoder: Decoder) throws {
     let container = try decoder.container(keyedBy: CodingKeys.self)

  CMB_ID = try container.decodeIfPresent(String.self, forKey: .CMB_ID) ?? ""
  TH_CODE = try container.decodeIfPresent(String.self, forKey: .TH_CODE) ?? ""
  TH_ID = try container.decodeIfPresent(String.self, forKey: .TH_ID) ?? ""
  TH_STATUS = try container.decodeIfPresent(String.self, forKey: .TH_STATUS) ?? ""
  TH_THEME = try container.decodeIfPresent(String.self, forKey: .TH_THEME) ?? ""
  TH_TYPE = try container.decodeIfPresent(String.self, forKey: .TH_TYPE) ?? ""
  TH_VENUE = try container.decodeIfPresent(String.self, forKey: .TH_VENUE) ?? ""
 }

 // Define the CodingKeys enum to match your JSON keys
 enum CodingKeys: String, CodingKey {
     case CMB_ID, TH_CODE, TH_ID, TH_STATUS, TH_THEME, TH_TYPE, TH_VENUE
 }
}
struct personsStruct: Codable {
    let CMB_ID: String
    let PD_COUNTRY: String
    let PD_EMAIL: String
    let PD_NAME: String
    let PD_ORGANIZATION: String
    let PD_PHONE1: String
    let PD_PTYPE: String
    let PD_WORKPROFILE: String
    let PD_BIO: String
 
 init(from decoder: Decoder) throws {
     let container = try decoder.container(keyedBy: CodingKeys.self)

  CMB_ID = try container.decodeIfPresent(String.self, forKey: .CMB_ID) ?? ""
  PD_COUNTRY = try container.decodeIfPresent(String.self, forKey: .PD_COUNTRY) ?? ""
  PD_EMAIL = try container.decodeIfPresent(String.self, forKey: .PD_EMAIL) ?? ""
  PD_NAME = try container.decodeIfPresent(String.self, forKey: .PD_NAME) ?? ""
  PD_ORGANIZATION = try container.decodeIfPresent(String.self, forKey: .PD_ORGANIZATION) ?? ""
  PD_PHONE1 = try container.decodeIfPresent(String.self, forKey: .PD_PHONE1) ?? ""
  PD_PTYPE = try container.decodeIfPresent(String.self, forKey: .PD_PTYPE) ?? ""
  PD_WORKPROFILE = try container.decodeIfPresent(String.self, forKey: .PD_WORKPROFILE) ?? ""
  PD_BIO = try container.decodeIfPresent(String.self, forKey: .PD_BIO) ?? ""
 }

 // Define the CodingKeys enum to match your JSON keys
 enum CodingKeys: String, CodingKey {
     case CMB_ID, PD_COUNTRY, PD_EMAIL, PD_NAME, PD_ORGANIZATION, PD_PHONE1, PD_PTYPE, PD_WORKPROFILE, PD_BIO
 }
 
 static func ==(lhs: personsStruct, rhs: personsStruct) -> Bool {
     // Implement custom comparison logic here.
     return lhs.CMB_ID == rhs.CMB_ID &&
            lhs.PD_COUNTRY == rhs.PD_COUNTRY &&
            lhs.PD_EMAIL == rhs.PD_EMAIL &&
            lhs.PD_NAME == rhs.PD_NAME &&
            lhs.PD_ORGANIZATION == rhs.PD_ORGANIZATION &&
            lhs.PD_PHONE1 == rhs.PD_PHONE1 &&
            lhs.PD_PTYPE == rhs.PD_PTYPE &&
            lhs.PD_WORKPROFILE == rhs.PD_WORKPROFILE &&
            lhs.PD_BIO == rhs.PD_BIO
 }
}
struct galleryStruct: Decodable {
    let CMB_ID: String
    let IM_CATEGORY: String
    let IM_DATE: String
    let IM_DESC: String
    let IM_ID: String
    let IM_PATH: String
 init(from decoder: Decoder) throws {
     let container = try decoder.container(keyedBy: CodingKeys.self)

  CMB_ID = try container.decodeIfPresent(String.self, forKey: .CMB_ID) ?? ""
  IM_CATEGORY = try container.decodeIfPresent(String.self, forKey: .IM_CATEGORY) ?? ""
  IM_DATE = try container.decodeIfPresent(String.self, forKey: .IM_DATE) ?? ""
  IM_DESC = try container.decodeIfPresent(String.self, forKey: .IM_DESC) ?? ""
  IM_ID = try container.decodeIfPresent(String.self, forKey: .IM_ID) ?? ""
  IM_PATH = try container.decodeIfPresent(String.self, forKey: .IM_PATH) ?? ""
 }

 // Define the CodingKeys enum to match your JSON keys
 enum CodingKeys: String, CodingKey {
     case CMB_ID, IM_CATEGORY, IM_DATE, IM_DESC, IM_ID, IM_PATH
 }
}
struct organizationsStruct: Decodable {
    let CMB_ID: String
    let OS_BOOTHS: String
    let OS_NAME: String
    let OS_QUANTUM: String
    let OS_SUBTYPE: String
    let OS_TYPE: String
    let OS_WEBSITE: String

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if let intCMB_ID = try? container.decode(Int.self, forKey: .CMB_ID) {
            CMB_ID = String(intCMB_ID)
        } else if let stringCMB_ID = try? container.decode(String.self, forKey: .CMB_ID) {
            CMB_ID = stringCMB_ID
        } else {
            CMB_ID = ""
        }

        if let intQuantum = try? container.decode(Int.self, forKey: .OS_QUANTUM) {
            OS_QUANTUM = String(intQuantum)
        } else if let stringQuantum = try? container.decode(String.self, forKey: .OS_QUANTUM) {
            OS_QUANTUM = stringQuantum
        } else {
            OS_QUANTUM = ""
        }

        if let intBooths = try? container.decode(Int.self, forKey: .OS_BOOTHS) {
            OS_BOOTHS = String(intBooths)
        } else if let stringBooths = try? container.decode(String.self, forKey: .OS_BOOTHS) {
            OS_BOOTHS = stringBooths
        } else {
            OS_BOOTHS = ""
        }

        OS_NAME = try container.decodeIfPresent(String.self, forKey: .OS_NAME) ?? ""
        OS_SUBTYPE = try container.decodeIfPresent(String.self, forKey: .OS_SUBTYPE) ?? ""
        OS_TYPE = try container.decodeIfPresent(String.self, forKey: .OS_TYPE) ?? ""
        OS_WEBSITE = try container.decodeIfPresent(String.self, forKey: .OS_WEBSITE) ?? ""
    }

    // Define the CodingKeys enum to match your JSON keys
    enum CodingKeys: String, CodingKey {
        case CMB_ID, OS_BOOTHS, OS_NAME, OS_QUANTUM, OS_SUBTYPE, OS_TYPE, OS_WEBSITE
    }
}
struct sponsorsStruct: Decodable {
    let CMB_ID: Int
    let OS_BOOTHS: String // Use Any type to accommodate both Int and String
    let OS_NAME: String
    let OS_QUANTUM: Int
    let OS_SUBTYPE: String
    let OS_TYPE: String
    let OS_WEBSITE: String

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        CMB_ID = try container.decodeIfPresent(Int.self, forKey: .CMB_ID) ?? 0
     OS_NAME = try container.decodeIfPresent(String.self, forKey: .OS_NAME) ?? ""
     OS_BOOTHS = try container.decodeIfPresent(String.self, forKey: .OS_BOOTHS) ?? ""
        OS_QUANTUM = try container.decodeIfPresent(Int.self, forKey: .OS_QUANTUM) ?? 0
        OS_SUBTYPE = try container.decodeIfPresent(String.self, forKey: .OS_SUBTYPE) ?? ""
        OS_TYPE = try container.decodeIfPresent(String.self, forKey: .OS_TYPE) ?? ""
        OS_WEBSITE = try container.decodeIfPresent(String.self, forKey: .OS_WEBSITE) ?? ""
    }

    // Define the CodingKeys enum to match your JSON keys
    enum CodingKeys: String, CodingKey {
        case CMB_ID, OS_BOOTHS, OS_NAME, OS_QUANTUM, OS_SUBTYPE, OS_TYPE, OS_WEBSITE
    }
}
func fetchData<T: Decodable>(from url: URL, completion: @escaping (Result<T, Error>) -> Void) {
 
 URLSession.shared.dataTask(with: url) { data, response, error in
  
  if let error = error {
   completion(.failure(error))
   return
  }
  
  if let data = data {
   do {
    let decoder = JSONDecoder()
    
    let decodedData = try decoder.decode(T.self, from: data)
    completion(.success(decodedData))
   } catch {
    completion(.failure(error))
   }
  }
 }.resume()
}

var scheduleData: [String: scheduleStruct] = [:]
var scheduleDataArr: [scheduleStruct] = []
var themesData: [themeStruct] = []
var personsData: [personsStruct] = []
var galleryData: [galleryStruct] = []
var organizationsData: [organizationsStruct] = []

func fetchScheduleJSONDataFromObj(from _url: String) {
 guard let url = URL(string: _url) else {
  scheduleData = [:]
     return
 }
 fetchData(from: url) { (result: Result<[String: scheduleStruct], Error>) in
        switch result {
        case .success(let decodedData):
            DispatchQueue.main.async {
                scheduleData = decodedData
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}

func fetchScheduleJSONData(from _url: String) {
 guard let url = URL(string: _url) else {
     return
 }
 fetchData(from: url) { (result: Result<[scheduleStruct], Error>) in
        switch result {
        case .success(let decodedData):
            DispatchQueue.main.async {
             scheduleDataArr = decodedData
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}
func fetchThemesJSONData(from _url: String) {
 guard let url = URL(string: _url) else {
     return
 }
 fetchData(from: url) { (result: Result<[themeStruct], Error>) in
        switch result {
        case .success(let decodedData):
            DispatchQueue.main.async {
             themesData = decodedData
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}
//func fetchPersonsJSONData(from _url: String) {
//    // First, try to load data from the local file
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([personsStruct].self, from: loadedData)
//                // Use your loadedArray as needed
//                personsData = loadedArray
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//
//    // Fetch data from the internet
//    guard let url = URL(string: _url) else {
//        return
//    }
//
//    fetchData(from: url) { (result: Result<[personsStruct], Error>) in
//        switch result {
//        case .success(let decodedData):
//            // Update local data with data from the internet
//            personsData = decodedData
//
//            // Save the updated data to the local JSON file
//            if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//                let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
//                do {
//                    let jsonData = try JSONEncoder().encode(decodedData)
//                    try jsonData.write(to: fileURL)
//                    print("Data saved to file: \(fileURL)")
//                } catch {
//                    print("Error saving data to file: \(error)")
//                }
//            }
//        case .failure(let error):
//            print("Error fetching data: \(error)")
//        }
//    }
//}



//fetch persons data
func fetchPersonsJSONData(from _url: String) {
    // Fetch data from the internet
    guard let url = URL(string: _url) else {
        return
    }

    fetchData(from: url) { (result: Result<[personsStruct], Error>) in
        switch result {
        case .success(let decodedData):
            if PersonsshouldUpdateLocalData(newData: decodedData) {
                personsData = decodedData
             PersonssaveDataToLocalFile(data: decodedData)
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}
func PersonsshouldUpdateLocalData(newData: [personsStruct]) -> Bool {
    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
        if let loadedData = try? Data(contentsOf: fileURL) {
            do {
                let loadedArray = try JSONDecoder().decode([personsStruct].self, from: loadedData)
                
                // Compare the loaded data with the new data to determine if they are different
                return PersonsareArraysDifferent(array1: loadedArray, array2: newData)
            } catch {
                print("Error decoding local data: \(error)")
            }
        }
    }
    
    // If there was an error reading local data or local data is missing, update
    return true
}
func PersonsareArraysDifferent(array1: [personsStruct], array2: [personsStruct]) -> Bool {
    if array1.count != array2.count {
        return true
    }
    
    for (index, item) in array1.enumerated() {
        if item.CMB_ID != array2[index].CMB_ID ||
           item.PD_COUNTRY != array2[index].PD_COUNTRY ||
           item.PD_EMAIL != array2[index].PD_EMAIL ||
           item.PD_NAME != array2[index].PD_NAME ||
           item.PD_ORGANIZATION != array2[index].PD_ORGANIZATION ||
           item.PD_PHONE1 != array2[index].PD_PHONE1 ||
           item.PD_PTYPE != array2[index].PD_PTYPE ||
           item.PD_WORKPROFILE != array2[index].PD_WORKPROFILE ||
           item.PD_BIO != array2[index].PD_BIO {
            return true
        }
    }
    
    return false
}
func PersonssaveDataToLocalFile(data: [personsStruct]) {
    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
        do {
            let jsonData = try JSONEncoder().encode(data)
            try jsonData.write(to: fileURL)
            print("Data saved to file: \(fileURL)")
        } catch {
            print("Error saving data to file: \(error)")
        }
    }
}

//func fetchPersonsJSONData(from _url: String) {
// guard let url = URL(string: _url) else {
//     return
// }
// fetchData(from: url) { (result: Result<[personsStruct], Error>) in
//        switch result {
//        case .success(let decodedData):
//            DispatchQueue.main.async {
//             personsData = decodedData
//            }
//        case .failure(let error):
//            print("Error fetching data: \(error)")
//        }
//    }
//}

func fetchGallerydata(from _url: String) {
 guard let url = URL(string: _url) else {
     return
 }
 fetchData(from: url) { (result: Result<[galleryStruct], Error>) in
        switch result {
        case .success(let decodedData):
            DispatchQueue.main.async {
             galleryData = decodedData
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}


func fetchOrgdata(from _url: String) {
 guard let url = URL(string: _url) else {
     return
 }
 fetchData(from: url) { (result: Result<[organizationsStruct], Error>) in
        switch result {
        case .success(let decodedData):
            DispatchQueue.main.async {
             organizationsData = decodedData
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}



//func addFavourites(from cbmId: String){
// do{
//  let context = CoreDataManager.shared.managedObjectContext
//  let fav = FAVOURITES(context: context)
//  fav.id = .init()
//  fav.cmb_id = cbmId
//  CoreDataManager.shared.saveContext()
// }
// catch{
//  print(error.localizedDescription )
// }
//}

func openDatabase() -> OpaquePointer? {
  var db: OpaquePointer?
 if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
  let part1DbPath = documentsDirectory.appendingPathComponent("SPG-2023").appendingPathExtension("sqlite")
  //(part1DbPath, &db)
  if sqlite3_open(part1DbPath.path,&db)  == SQLITE_OK {
    print("Successfully opened connection to database at \(part1DbPath)")
    return db
  } else {
    print("Unable to open database.")
    //PlaygroundPage.current.finishExecution()
  }
 }
return db
}

func insert(from db: OpaquePointer?) {
 let insertStatementString = "INSERT INTO personsData (CMB_ID, PD_COUNTRY, PD_EMAIL, PD_NAME, PD_ORGANIZATION, PD_PHONE1, PD_PTYPE, PD_WORKPROFILE ,PD_BIO) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);"
  var insertStatement: OpaquePointer?
  // 1
  if sqlite3_prepare_v2(db, insertStatementString, -1, &insertStatement, nil) ==
      SQLITE_OK {
   let CMB_ID: NSString = "Ray"
   let PD_COUNTRY: NSString = "Ray"
   let PD_EMAIL: NSString = "Ray"
   let PD_NAME: NSString = "Ray"
   let PD_ORGANIZATION: NSString = "Ray"
   let PD_PHONE1: NSString = "Ray"
   let PD_PTYPE: NSString = "Ray"
   let PD_WORKPROFILE: NSString = "Ray"
   let PD_BIO: NSString = "Ray"
   sqlite3_bind_text(insertStatement, 2, CMB_ID.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_COUNTRY.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_EMAIL.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_NAME.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_ORGANIZATION.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_PHONE1.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_WORKPROFILE.utf8String, -1, nil)
   sqlite3_bind_text(insertStatement, 2, PD_BIO.utf8String, -1, nil)
    if sqlite3_step(insertStatement) == SQLITE_DONE {
      print("\nSuccessfully inserted row.")
    } else {
      print("\nCould not insert row.")
    }
  } else {
    print("\nINSERT statement is not prepared.")
  }
  sqlite3_finalize(insertStatement)
}




// create table functions.
//func createPersonsTable(from db: OpaquePointer?) {
// var createTableString = """
// CREATE TABLE personsData(
// CMB_ID STRING, PD_COUNTRY String, PD_EMAIL String,PD_NAME STRING,
// PD_ORGANIZATION String, PD_PHONE1 String, PD_PTYPE STRING,
// PD_WORKPROFILE String, PD_BIO String);
//"""
//  var createTableStatement: OpaquePointer?
//  if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) ==
//      SQLITE_OK {
//    if sqlite3_step(createTableStatement) == SQLITE_DONE {
//      print("\nContact table created.")
//    } else {
//      print("\nContact table is not created.")
//    }
//  }
// else {
//    print("\nCREATE TABLE statement is not prepared.")
//  }
//  sqlite3_finalize(createTableStatement)
//}
//
//func createScheduleTable(from db: OpaquePointer?) {
// var createTableString = """
// CREATE TABLE scheduleDataArr(
//  AU_ID STRING, CMB_ID STRING, AU_NAME String, AU_ORGANIZATION String, AU_WORKPROFILE STRING, EVT_COAUTHORS String, EVT_ID String, EVT_PAPER_EVENT_PAPERID STRING, EVT_PAPER_ID String, EVT_STATUS String,
//      EVT_TITLE STRING, EVT_TYPE STRING, SLOT_DATE String, SLOT_DAY String, SLOT_END STRING, SLOT_ID String, SLOT_START String, SLOT_VENUE1 STRING, SLOT_VENUE2 String, SP_ID String, SP_NAME String, SP_ORGANIZATION String, SP_WORKPROFILE STRING, TH_ID String, TH_THEME String);
//"""
//  var createTableStatement: OpaquePointer?
//  if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) ==
//      SQLITE_OK {
//    if sqlite3_step(createTableStatement) == SQLITE_DONE {
//      print("\nContact table created.")
//    } else {
//      print("\nContact table is not created.")
//    }
//  }
// else {
//    print("\nCREATE TABLE statement is not prepared.")
//  }
//  sqlite3_finalize(createTableStatement)
//}
//
//func createThemesTable(from db: OpaquePointer?) {
// var createTableString = """
// CREATE TABLE themesData(
//CMB_ID STRING, TH_CODE String, TH_ID String, TH_STATUS STRING, TH_THEME String, TH_TYPE String, TH_VENUE STRING);
//"""
//  var createTableStatement: OpaquePointer?
//  if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) ==
//      SQLITE_OK {
//    if sqlite3_step(createTableStatement) == SQLITE_DONE {
//      print("\nContact table created.")
//    } else {
//      print("\nContact table is not created.")
//    }
//  }
// else {
//    print("\nCREATE TABLE statement is not prepared.")
//  }
//  sqlite3_finalize(createTableStatement)
//}
//
//func createGalleryTable(from db: OpaquePointer?) {
// var createTableString = """
// CREATE TABLE galleryData(
//CMB_ID STRING, IM_CATEGORY String, IM_DATE String, IM_DESC STRING, IM_ID String, IM_PATH String);
//"""
//  var createTableStatement: OpaquePointer?
//  if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) ==
//      SQLITE_OK {
//    if sqlite3_step(createTableStatement) == SQLITE_DONE {
//      print("\nContact table created.")
//    } else {
//      print("\nContact table is not created.")
//    }
//  }
// else {
//    print("\nCREATE TABLE statement is not prepared.")
//  }
//  sqlite3_finalize(createTableStatement)
//}
//
//func createorganizationsTable(from db: OpaquePointer?) {
// var createTableString = """
// CREATE TABLE organizationsData(
//CMB_ID STRING, OS_BOOTHS String, OS_NAME String, OS_QUANTUM STRING, OS_SUBTYPE String, OS_TYPE String, OS_WEBSITE String);
//"""
//  var createTableStatement: OpaquePointer?
//  if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) ==
//      SQLITE_OK {
//    if sqlite3_step(createTableStatement) == SQLITE_DONE {
//      print("\nContact table created.")
//    } else {
//      print("\nContact table is not created.")
//    }
//  }
// else {
//    print("\nCREATE TABLE statement is not prepared.")
//  }
//  sqlite3_finalize(createTableStatement)
//}
//
//func createCECourseTable(from db: OpaquePointer?) {
// var createTableString = """
// CREATE TABLE CECourseDeta(
//CMB_ID STRING, CE_COURSEID String, CE_FACULTY String, CE_FACULTY_DESC STRING, CE_FACULTY_ID String, CE_ID String, CE_THEME String,
//CE_TITLE STRING, CE_COURSE_DESC String, CE_DATE String, CE_OUTLINE STRING, CE_OBJECTIVE String);
//"""
//  var createTableStatement: OpaquePointer?
//  if sqlite3_prepare_v2(db, createTableString, -1, &createTableStatement, nil) ==
//      SQLITE_OK {
//    if sqlite3_step(createTableStatement) == SQLITE_DONE {
//      print("\nContact table created.")
//    } else {
//      print("\nContact table is not created.")
//    }
//  }
// else {
//    print("\nCREATE TABLE statement is not prepared.")
//  }
//  sqlite3_finalize(createTableStatement)
//}
