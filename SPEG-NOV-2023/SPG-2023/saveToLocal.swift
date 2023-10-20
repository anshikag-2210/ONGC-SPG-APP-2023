//
//  saveToLocal.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 17/10/23.
//

import Foundation

func saveDataToLocalFile(data: Data, fileName: String) {
    let fileManager = FileManager.default
    let documentsDirectory = try! fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
    let fileURL = documentsDirectory.appendingPathComponent(fileName)

    do {
        try data.write(to: fileURL)
        print("Data saved to \(fileURL)")
    } catch {
        print("Error saving data: \(error)")
    }
}


//func save_plist(){
// let fileManager = FileManager.default
// let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
// if let Mydata = try? PropertyListEncoder().encode(themesData) {
//     // Ensure the directory exists
//     let directoryURL = documentsURL?.appendingPathComponent("CECourseData")
//
//     do {
//         try fileManager.createDirectory(at: directoryURL!, withIntermediateDirectories: true, attributes: nil)
//     } catch {
//         print("Error creating directory: \(error.localizedDescription)")
//     }
//
//     // Save the data to the plist file
//     let plistURL = directoryURL?.appendingPathComponent("Themes.plist")
//
//     do {
//         try Mydata.write(to: plistURL!)
//         print("Data saved to Themes.plist")
//     } catch {
//         print("Error saving data to Themes.plist: \(error.localizedDescription)")
//     }
// }
//
//}
//func loadPlist() -> [themeStruct]? {
//    let fileManager = FileManager.default
//    let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
//    let directoryURL = documentsURL?.appendingPathComponent("Themes")
//    let plistURL = directoryURL?.appendingPathComponent("Themes.plist")
//
//    if let Mydata = try? Data(contentsOf: plistURL!),
//       let decodedData = try? PropertyListDecoder().decode([themeStruct].self, from: Mydata) {
//        return decodedData
//    } else {
//        print("Error reading Themes.plist")
//        return nil
//    }
//}

