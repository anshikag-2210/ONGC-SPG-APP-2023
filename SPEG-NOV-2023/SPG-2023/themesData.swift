////
////  themesData.swift
////  SPG 2023
////
////  Created by Anshika Gangwar on 27/10/23.
////
//
//import Foundation
//var themesData: [themeStruct] = []
//
//func loadLocalThemesData() -> [themeStruct]? {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("CourseData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([themeStruct].self, from: loadedData)
//                return loadedArray
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//    return nil
//}
//func fetchThemesJSONData(from _url: String) {
//    if let localData = loadLocalThemesData() {
//     themesData = localData
//    }
// if isInternetAvailable(){
//  guard let url = URL(string: _url) else {
//      return
//  }
//
//  fetchData(from: url) { (result: Result<[themeStruct], Error>) in
//   switch result {
//   case .success(let decodedData):
//       if themesJshouldUpdateLocalData(newData: decodedData) {
//        themesData = decodedData
//        themessaveDataToLocalFile(data: decodedData)
//       }
//   case .failure(let error):
//       print("Error fetching data: \(error)")
//   }
//  }
// }
//
//}
//func themesJshouldUpdateLocalData(newData: [themeStruct]) -> Bool {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("themesData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([themeStruct].self, from: loadedData)
//                return themesareArraysDifferent(array1: loadedArray, array2: newData)
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//    
//    // If there was an error reading local data or local data is missing, update
//    return true
//}
//func themesareArraysDifferent(array1: [themeStruct], array2: [themeStruct]) -> Bool {
//    if array1.count != array2.count {
//        return true
//    }
//    for (index, item) in array1.enumerated() {
//        if item.CMB_ID != array2[index].CMB_ID ||
//           item.TH_CODE != array2[index].TH_CODE ||
//           item.TH_ID != array2[index].TH_ID ||
//           item.TH_STATUS != array2[index].TH_STATUS ||
//           item.TH_THEME != array2[index].TH_THEME ||
//           item.TH_TYPE != array2[index].TH_TYPE ||
//           item.TH_VENUE != array2[index].TH_VENUE{
//            return true
//        }
//    }
//    
//    return false
//}
//func themessaveDataToLocalFile(data: [themeStruct]) {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("themesData.json")
//        do {
//            let jsonData = try JSONEncoder().encode(data)
//            try jsonData.write(to: fileURL)
//            print("Data saved to file: \(fileURL)")
//        } catch {
//            print("Error saving data to file: \(error)")
//        }
//    }
//}
//
