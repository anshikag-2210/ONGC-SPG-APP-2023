////
////  orgData.swift
////  SPG 2023
////
////  Created by Anshika Gangwar on 27/10/23.
////
//
//import Foundation
//var organizationsData: [organizationsStruct] = []
//
//func loadLocalOrgData() -> [organizationsStruct]? {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("OrgData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([organizationsStruct].self, from: loadedData)
//                return loadedArray
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//    return nil
//}
//
//func fetchOrgdata(from _url: String) {
// if let localData = loadLocalOrgData() {
//  organizationsData = localData
// }
// if isInternetAvailable(){
//  guard let url = URL(string: _url) else {
//      return
//  }
//  fetchData(from: url) { (result: Result<[organizationsStruct], Error>) in
//   switch result {
//   case .success(let decodedData):
//       if orgJshouldUpdateLocalData(newData: decodedData) {
//        organizationsData = decodedData
//        orgsaveDataToLocalFile(data: decodedData)
//       }
//   case .failure(let error):
//       print("Error fetching data: \(error)")
//   }
//  }
// }
//}
//
//func orgJshouldUpdateLocalData(newData: [organizationsStruct]) -> Bool {
// if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//     let fileURL = documentsDirectory.appendingPathComponent("OrgData.json")
//     if let loadedData = try? Data(contentsOf: fileURL) {
//         do {
//             let loadedArray = try JSONDecoder().decode([organizationsStruct].self, from: loadedData)
//
//             // Compare the loaded data with the new data to determine if they are different
//             return orgareArraysDifferent(array1: loadedArray, array2: newData)
//         } catch {
//             print("Error decoding local data: \(error)")
//         }
//     }
// }
//return true
//}
//func orgareArraysDifferent(array1: [organizationsStruct], array2: [organizationsStruct]) -> Bool {
//    if array1.count != array2.count {
//        return true
//    }
//    for (index, item) in array1.enumerated() {
//        if item.CMB_ID != array2[index].CMB_ID ||
//           item.OS_BOOTHS != array2[index].OS_BOOTHS ||
//           item.OS_NAME != array2[index].OS_NAME ||
//           item.OS_QUANTUM != array2[index].OS_QUANTUM ||
//           item.OS_SUBTYPE != array2[index].OS_SUBTYPE ||
//           item.OS_TYPE != array2[index].OS_TYPE ||
//            item.OS_WEBSITE != array2[index].OS_WEBSITE {
//            return true
//        }
//    }
//
//    return false
//}
//func orgsaveDataToLocalFile(data: [organizationsStruct]) {
// if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//     let fileURL = documentsDirectory.appendingPathComponent("OrgData.json")
//     do {
//         let jsonData = try JSONEncoder().encode(data)
//         try jsonData.write(to: fileURL)
//         print("Data saved to file: \(fileURL)")
//     } catch {
//         print("Error saving data to file: \(error)")
//     }
// }
//}
