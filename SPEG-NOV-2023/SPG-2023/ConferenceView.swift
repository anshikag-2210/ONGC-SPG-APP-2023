//
//  ConferenceView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI

struct ConferenceView: View {
    var body: some View {
     VStack{
      let ConferenceURL = Bundle.main.url(forResource: "Data/Layout/Conference", withExtension: "pdf")!
      PDFView(localFileURL: ConferenceURL)
      }
     .navigationBarItems(leading: HeaderView(header: "Conference Layout"))
     footerView()

     }
}

struct ConferenceView_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceView()
    }
}
