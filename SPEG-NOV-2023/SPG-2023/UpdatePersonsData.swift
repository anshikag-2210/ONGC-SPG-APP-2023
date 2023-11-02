////
////  UpdatePersonsData.swift
////  SPG 2023
////
////  Created by Anshika Gangwar on 27/10/23.
////
//
//import Foundation
//
//func fetchPersonsJSONData(from _url: String) {
//    // Fetch data from the internet
//    guard let url = URL(string: _url) else {
//        return
//    }
//
//    fetchData(from: url) { (result: Result<[personsStruct], Error>) in
//        switch result {
//        case .success(let decodedData):
//            if PersonsshouldUpdateLocalData(newData: decodedData) {
//                personsData = decodedData
//             PersonssaveDataToLocalFile(data: decodedData)
//            }
//        case .failure(let error):
//            print("Error fetching data: \(error)")
//        }
//    }
//}
//func PersonsshouldUpdateLocalData(newData: [personsStruct]) -> Bool {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([personsStruct].self, from: loadedData)
//
//                // Compare the loaded data with the new data to determine if they are different
//                return PersonsareArraysDifferent(array1: loadedArray, array2: newData)
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//
//    // If there was an error reading local data or local data is missing, update
//    return true
//}
//func PersonsareArraysDifferent(array1: [personsStruct], array2: [personsStruct]) -> Bool {
//    if array1.count != array2.count {
//        return true
//    }
//
//    for (index, item) in array1.enumerated() {
//        if item.CMB_ID != array2[index].CMB_ID ||
//           item.PD_COUNTRY != array2[index].PD_COUNTRY ||
//           item.PD_EMAIL != array2[index].PD_EMAIL ||
//           item.PD_NAME != array2[index].PD_NAME ||
//           item.PD_ORGANIZATION != array2[index].PD_ORGANIZATION ||
//           item.PD_PHONE1 != array2[index].PD_PHONE1 ||
//           item.PD_PTYPE != array2[index].PD_PTYPE ||
//           item.PD_WORKPROFILE != array2[index].PD_WORKPROFILE ||
//           item.PD_BIO != array2[index].PD_BIO {
//            return true
//        }
//    }
//
//    return false
//}
//func PersonssaveDataToLocalFile(data: [personsStruct]) {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("personsData.json")
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
