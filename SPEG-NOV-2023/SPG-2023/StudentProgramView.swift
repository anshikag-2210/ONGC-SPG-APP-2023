//
//  programView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI
import WebKit

struct StudentProgramView: View {
 @State private var showWebView = false
 private let urlString: String = "Data/program"
    var body: some View {
     VStack{
      let studentURL = Bundle.main.url(forResource: "Data/program/Student", withExtension: "pdf")!
       PDFView(localFileURL: studentURL)
       .navigationBarTitle("Student Program", displayMode: .large)
     }
     .navigationBarItems(leading: HeaderView(header: "Program"))
     footerView()

    }
 
}

struct programView_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
