//
//  ExhibitionView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI

struct ExhibitionView: View {
    var body: some View {
     VStack{
      let exhbURL = Bundle.main.url(forResource: "Data/Layout/ExbhLayout", withExtension: "pdf")!
      PDFView(localFileURL: exhbURL)
      }
      .navigationBarItems(leading: HeaderView(header: "EXhibition Layout"))
      footerView()
    }
}

struct ExhibitionView_Previews: PreviewProvider {
    static var previews: some View {
        ExhibitionView()
    }
}
