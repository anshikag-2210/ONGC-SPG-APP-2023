//
//  tracks.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 05/10/23.
//

import SwiftUI

struct tracksView: View{
@State private var tracksdata: [tracksStruct] = []
var body: some View {
// let keys = tracksdata.map{$0.key}
// let scheduleData = tracksdata.map{$0.value}
 VStack{
   List(tracksdata, id: \.CMB_ID) { item in
    Text(item.TH_THEME)
    Text("theme")
   }.onAppear {
    fetchJSONData()
   }
   .listStyle(PlainListStyle())
  VStack{
   Text("Footer")
  }
 }
}
 func fetchJSONData() {
     guard let url = URL(string: "https://spg23-03112023-default-rtdb.asia-southeast1.firebasedatabase.app/tabs/data/V_SCHEDULE.json") else {
         return
     }
  fetchData(from: url) { (result: Result<[tracksStruct], Error>) in
         switch result {
         case .success(let decodedData):
             DispatchQueue.main.async {
                 self.tracksdata = decodedData
             }
         case .failure(let error):
             print("Error fetching data: \(error)")
         }
     }
 }
}

struct tracks_Previews: PreviewProvider {
    static var previews: some View {
     tracksView()
//     tracksView(showSheet: .constant(false))
    }
}

struct tracksStruct: Decodable {
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


