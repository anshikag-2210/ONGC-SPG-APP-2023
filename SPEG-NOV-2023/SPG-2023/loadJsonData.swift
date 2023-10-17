import Foundation
import Combine

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
struct themeStruct: Decodable {
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
struct personsStruct: Decodable {
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
//var scheduleDataDAY3: [scheduleStruct] = []
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
 guard let url = URL(string: _url) else {
     return
 }
 fetchData(from: url) { (result: Result<[personsStruct], Error>) in
        switch result {
        case .success(let decodedData):
            DispatchQueue.main.async {
             personsData = decodedData
            }
        case .failure(let error):
            print("Error fetching data: \(error)")
        }
    }
}



