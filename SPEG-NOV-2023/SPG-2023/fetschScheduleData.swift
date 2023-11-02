////
////  fetschScheduleData.swift
////  SPG 2023
////
////  Created by Anshika Gangwar on 27/10/23.
////
//
//import Foundation
//
//func fetchScheduleJSONData(from _url: String) {
//    // Fetch data from the internet
//    guard let url = URL(string: _url) else {
//        return
//    }
//
//    fetchData(from: url) { (result: Result<[scheduleStruct], Error>) in
//     switch result {
//     case .success(let decodedData):
//         if ScheduleJshouldUpdateLocalData(newData: decodedData) {
//          scheduleDataArr = decodedData
//          schedulesaveDataToLocalFile(data: decodedData)
//         }
//     case .failure(let error):
//         print("Error fetching data: \(error)")
//     }
//    }
//}
//func ScheduleJshouldUpdateLocalData(newData: [scheduleStruct]) -> Bool {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("ScheduleData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([scheduleStruct].self, from: loadedData)
//                
//                // Compare the loaded data with the new data to determine if they are different
//                return ScheduleareArraysDifferent(array1: loadedArray, array2: newData)
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//    
//    // If there was an error reading local data or local data is missing, update
//    return true
//}
//func ScheduleareArraysDifferent(array1: [scheduleStruct], array2: [scheduleStruct]) -> Bool {
//    if array1.count != array2.count {
//        return true
//    }
//    for (index, item) in array1.enumerated() {
//        if item.AU_ID != array2[index].AU_ID ||
//           item.AU_NAME != array2[index].AU_NAME ||
//           item.AU_ORGANIZATION != array2[index].AU_ORGANIZATION ||
//           item.AU_WORKPROFILE != array2[index].AU_WORKPROFILE ||
//           item.CMB_ID != array2[index].CMB_ID ||
//           item.EVT_COAUTHORS != array2[index].EVT_COAUTHORS ||
//           item.EVT_PAPER_EVENT_PAPERID != array2[index].EVT_PAPER_EVENT_PAPERID ||
//           item.EVT_ID != array2[index].EVT_ID ||
//           item.EVT_STATUS != array2[index].EVT_STATUS ||
//            item.EVT_PAPER_ID != array2[index].EVT_PAPER_ID ||
//            item.EVT_TITLE != array2[index].EVT_TITLE ||
//            item.EVT_TYPE != array2[index].EVT_TYPE ||
//            item.SLOT_DATE != array2[index].SLOT_DATE ||
//            item.SLOT_DAY != array2[index].SLOT_DAY ||
//            item.SLOT_END != array2[index].SLOT_END ||
//            item.SLOT_ID != array2[index].SLOT_ID ||
//            item.SLOT_START != array2[index].SLOT_START ||
//            item.SLOT_VENUE1 != array2[index].SLOT_VENUE1 ||
//            item.SLOT_VENUE2 != array2[index].SLOT_VENUE2 ||
//            item.SP_ID != array2[index].SP_ID ||
//            item.SP_NAME != array2[index].SP_NAME ||
//            item.SP_ORGANIZATION != array2[index].SP_ORGANIZATION ||
//            item.SP_WORKPROFILE != array2[index].SP_WORKPROFILE ||
//            item.TH_ID != array2[index].TH_ID ||
//            item.TH_THEME != array2[index].TH_THEME {
//            return true
//        }
//    }
//    
//    return false
//}
//func schedulesaveDataToLocalFile(data: [scheduleStruct]) {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("ScheduleData.json")
//        do {
//            let jsonData = try JSONEncoder().encode(data)
//            try jsonData.write(to: fileURL)
//            print("Data saved to file: \(fileURL)")
//        } catch {
//            print("Error saving data to file: \(error)")
//        }
//    }
//}
