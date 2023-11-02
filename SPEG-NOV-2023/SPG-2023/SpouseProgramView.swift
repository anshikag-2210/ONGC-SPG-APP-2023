//
//  SpouseProgramView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 01/11/23.
//

import SwiftUI

struct SpouseProgramView: View {
 private let urlString: String = "Data/program"
 var body: some View {
  VStack{
   let spouseURL = Bundle.main.url(forResource: "Data/program/Spouses", withExtension: "pdf")!
   PDFView(localFileURL: spouseURL)
    .navigationBarTitle("Spouse Program", displayMode: .large)

   footerView()
  }
 }
}

struct SpouseProgramView_Previews: PreviewProvider {
    static var previews: some View {
        SpouseProgramView()
    }
}
