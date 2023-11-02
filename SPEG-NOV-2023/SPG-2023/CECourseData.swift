////
////  CECourseData.swift
////  SPG 2023
////
////  Created by Anshika Gangwar on 27/10/23.
////
//
//import Foundation
//
//
//func loadLocalCECourseData() -> [CECourseStruct]? {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("CourseData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([CECourseStruct].self, from: loadedData)
//                return loadedArray
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//    return nil
//}
//func fetchCECoursedata(from _url: String) {
//    if let localData = loadLocalCECourseData() {
//     CECoursedata = localData
//    }
// if isInternetAvailable(){
//  guard let url = URL(string: _url) else {
//      return
//  }
//
//  fetchData(from: url) { (result: Result<[CECourseStruct], Error>) in
//   switch result {
//   case .success(let decodedData):
//       if courseJshouldUpdateLocalData(newData: decodedData) {
//        CECoursedata = decodedData
//        coursesaveDataToLocalFile(data: decodedData)
//       }
//   case .failure(let error):
//       print("Error fetching data: \(error)")
//   }
//  }
// }
//}
//func courseJshouldUpdateLocalData(newData: [CECourseStruct]) -> Bool {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("CourseData.json")
//        if let loadedData = try? Data(contentsOf: fileURL) {
//            do {
//                let loadedArray = try JSONDecoder().decode([CECourseStruct].self, from: loadedData)
//
//                // Compare the loaded data with the new data to determine if they are different
//                return courseareArraysDifferent(array1: loadedArray, array2: newData)
//            } catch {
//                print("Error decoding local data: \(error)")
//            }
//        }
//    }
//
//    // If there was an error reading local data or local data is missing, update
//    return true
//}
//func courseareArraysDifferent(array1: [CECourseStruct], array2: [CECourseStruct]) -> Bool {
//    if array1.count != array2.count {
//        return true
//    }
//    for (index, item) in array1.enumerated() {
//        if item.CE_COURSEID != array2[index].CE_COURSEID ||
//           item.CE_FACULTY != array2[index].CE_FACULTY ||
//           item.CE_FACULTY_DESC != array2[index].CE_FACULTY_DESC ||
//           item.CE_FACULTY_ID != array2[index].CE_FACULTY_ID ||
//           item.CE_ID != array2[index].CE_ID ||
//           item.CE_THEME != array2[index].CE_THEME ||
//            item.CE_TITLE != array2[index].CE_TITLE ||
//            item.CMB_ID != array2[index].CMB_ID ||
//            item.CE_COURSE_DESC != array2[index].CE_COURSE_DESC ||
//            item.CE_DATE != array2[index].CE_DATE ||
//            item.CE_OUTLINE != array2[index].CE_OUTLINE ||
//             item.CE_OBJECTIVE != array2[index].CE_OBJECTIVE{
//            return true
//        }
//    }
//
//    return false
//}
//func coursesaveDataToLocalFile(data: [CECourseStruct]) {
//    if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//        let fileURL = documentsDirectory.appendingPathComponent("CourseData.json")
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
