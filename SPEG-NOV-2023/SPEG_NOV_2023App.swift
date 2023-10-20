//
//  SPEG_NOV_2023App.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 04/10/23.
//

import SwiftUI
import SQLite3

@main
struct SPEG_NOV_2023App: App {
//    @State var db: Connection!
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
         home()
        }
    }
 


 
// func openDatabase() {
//     do {
//         let documentsDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
//         let fileUrl = documentsDirectory.appendingPathComponent("GeoIndia").appendingPathExtension("sqlite3")
//
//         self.db = try Connection(fileUrl.path)
//         //print("success in creating db")
//     }
//     catch{
//         print(error)
//     }
// }
}
//SPEG_NOV_2023App
