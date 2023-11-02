////
////  galleryData.swift
////  SPG 2023
////
////  Created by Anshika Gangwar on 27/10/23.
////
//
//import Foundation
//
//
//
//func loadLocalGalleryData() -> [galleryStruct]? {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("GalleryData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([galleryStruct].self, from: loadedData)
//                return loadedArray
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//    return nil
//}
//
//func fetchGallerydata(from _url: String) {
//   if let localData = loadLocalGalleryData() {
//       galleryData = localData
//   }
//   if isInternetAvailable() {
//        guard let url = URL(string: _url) else {
//            return
//        }
//        fetchData(from: url) { (result: Result<[galleryStruct], Error>) in
//         switch result {
//         case .success(let decodedData):
//             if GalleryJshouldUpdateLocalData(newData: decodedData) {
//              galleryData = decodedData
//              GallerysaveDataToLocalFile(data: decodedData)
//             }
//         case .failure(let error):
//             print("Error fetching data: \(error)")
//         }
//        }
//    }
//}
//
//
//
//func fetchGallerydata_old(from _url: String) {
//    // Fetch data from the internet
//    guard let url = URL(string: _url) else {
//        return
//    }
//
//    fetchData(from: url) { (result: Result<[galleryStruct], Error>) in
//     switch result {
//     case .success(let decodedData):
//         if GalleryJshouldUpdateLocalData(newData: decodedData) {
//          galleryData = decodedData
//          GallerysaveDataToLocalFile(data: decodedData)
//         }
//     case .failure(let error):
//         print("Error fetching data: \(error)")
//     }
//    }
//}
//
//func GalleryJshouldUpdateLocalData(newData: [galleryStruct]) -> Bool {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("GalleryData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([galleryStruct].self, from: loadedData)
//
//                // Compare the loaded data with the new data to determine if they are different
//                return GalleryareArraysDifferent(array1: loadedArray, array2: newData)
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//
//    // If there was an error reading local data or local data is missing, update
//    return true
//}
//func GalleryareArraysDifferent(array1: [galleryStruct], array2: [galleryStruct]) -> Bool {
//    if array1.count != array2.count {
//        return true
//    }
//    for (index, item) in array1.enumerated() {
//        if item.CMB_ID != array2[index].CMB_ID ||
//           item.IM_CATEGORY != array2[index].IM_CATEGORY ||
//           item.IM_DATE != array2[index].IM_DATE ||
//           item.IM_DESC != array2[index].IM_DESC ||
//           item.IM_ID != array2[index].IM_ID ||
//           item.IM_PATH != array2[index].IM_PATH{
//            return true
//        }
//    }
//
//    return false
//}
//func GallerysaveDataToLocalFile(data: [galleryStruct]) {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("GalleryData.json")
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
//
