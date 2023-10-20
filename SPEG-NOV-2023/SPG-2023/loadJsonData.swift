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
func fetchPersonsJSONData(from _url: String) {
    // First, try to load data from the local file
    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
        if let loadedData = try? Data(contentsOf: fileURL) {
            do {
                let loadedArray = try JSONDecoder().decode([personsStruct].self, from: loadedData)
                // Use your loadedArray as needed
                personsData = loadedArray
            } catch {
                print("Error decoding local data: \(error)")
            }
        }
    }

    // Fetch data from the internet
    guard let url = URL(string: _url) else {
        return
    }

    fetchData(from: url) { (result: Result<[personsStruct], Error>) in
        switch result {
        case .success(let decodedData):
            // Update local data with data from the internet
            personsData = decodedData

            // Save the updated data to the local JSON file
            if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
                do {
                    let jsonData = try JSONEncoder().encode(decodedData)
                    try jsonData.write(to: fileURL)
                    print("Data saved to file: \(fileURL)")
                } catch {
                    print("Error saving data to file: \(error)")
                }
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
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

//public struct Table: SchemaType {
//
//    public static let identifier = "TABLE"
//
//    public var clauses: QueryClauses
//
//    public init(_ name: String, database: String? = nil) {
//        clauses = QueryClauses(name, alias: nil, database: database)
//    }
//
//}


func openDatabase() -> OpaquePointer? {
  var db: OpaquePointer?
 if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
  let part1DbPath = documentsDirectory.appendingPathComponent("GeoIndia").appendingPathExtension("sqlite3")
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

