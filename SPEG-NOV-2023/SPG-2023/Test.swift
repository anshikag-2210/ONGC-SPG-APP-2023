//
//  Test.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 10/10/23.
//

import SwiftUI

struct Test: View {
 @State private var themes: [themeStruct] = []
    var body: some View {
     VStack {
      Text("Test")
//         Button("Load Themes Plist") {
//             themes = loadPlist() ?? []
//             printThemes()
//         }
     }
    }
 func printThemes() {
     print("Loaded Themes:")
     for theme in themes {
         print(theme)
     }
 }

}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
