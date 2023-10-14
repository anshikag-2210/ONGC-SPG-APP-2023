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

//class DataManager: ObservableObject {
//
// static let shared = DataManager()
//
// @Published var ScheduleData: [scheduleStruct] = []
//
// private init() {
//  self.fetchScheduleData()
// }
//
// func fetchScheduleData() {
//  guard let url = URL(string: "https://spg23-03112023-default-rtdb.asia-southeast1.firebasedatabase.app/tabs/data/V_SCHEDULE.json") else {
//   return
//  }
//  fetchjsonData(from: url) { (result: Result<[scheduleStruct], Error>) in
//   switch result {
//   case .success(let decodedData):
//    DispatchQueue.main.async {
//     self.ScheduleData = decodedData
//    }
//   case .failure(let error):
//    print("Error fetching data: \(error)")
//   }
//  }
// }
//
// func fetchjsonData<T: Decodable>(from url: URL, completion: @escaping (Result<T, Error>) -> Void) {
//
//  URLSession.shared.dataTask(with: url) { data, response, error in
//
//   if let error = error {
//    completion(.failure(error))
//    return
//   }
//
//   if let data = data {
//    do {
//     let decoder = JSONDecoder()
//
//     let decodedData = try decoder.decode(T.self, from: data)
//     completion(.success(decodedData))
//    } catch {
//     completion(.failure(error))
//    }
//   }
//   //     else {
//   //      let error = NSError(domain: NSCocoaErrorDomain, code: 3, userInfo: [NSLocalizedDescriptionKey: "Data retrieval error"])
//   //       completion(.failure(error))
//   //         }
//
//  }.resume()
// }
//}

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
  //     else {
  //      let error = NSError(domain: NSCocoaErrorDomain, code: 3, userInfo: [NSLocalizedDescriptionKey: "Data retrieval error"])
  //       completion(.failure(error))
  //         }
  
 }.resume()
}


var scheduleData: [String: scheduleStruct] = [:]
var scheduleDataArr: [scheduleStruct] = []
//var scheduleDataDAY1: [scheduleStruct] = []
//var scheduleDataDAY2: [scheduleStruct] = []
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

//var groupedData = [String: [[String: String]]]() // Declare it as an instance property
//
//func _getDaywiseData() -> [String: [[String: String]]] { // Add the return type to the method
// let groupedData = scheduleData.reduce(into: [String: [scheduleStruct]]()) { result, scheduleItem in
//     result[scheduleItem.SLOT_DAY, default: []].append(scheduleItem)
// }
//
//    return groupedData
//}


