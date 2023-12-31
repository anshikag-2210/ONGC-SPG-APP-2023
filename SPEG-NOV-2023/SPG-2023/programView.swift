//
//  programView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI
import WebKit

//struct PDFView: UIViewRepresentable {
//    let localFileURL: URL
//
// func makeUIView(context: Context) -> WKWebView {
//     let webView = WKWebView()
//     webView.loadFileURL(localFileURL, allowingReadAccessTo: localFileURL)
//     return webView
// }
//
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//    }
//}


struct programView: View {
 @State private var showWebView = false
 private let urlString: String = "Data/program/Student"
    var body: some View {
     VStack{
      let spouseURL = Bundle.main.url(forResource: "Data/program/Spouses", withExtension: "pdf")!
      let studentURL = Bundle.main.url(forResource: "Data/program/Student", withExtension: "pdf")!
      List{
       NavigationLink(destination: PDFView(localFileURL: studentURL)){
        Text("Student Program")
         .foregroundColor(.green)
       }
       NavigationLink(destination: PDFView(localFileURL: spouseURL)){
        Text("Spouse Program")
         .foregroundColor(.green)
       }
      }.background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
       .navigationBarTitle("Program Briefs", displayMode: .large)
     }
    }
 
}

struct programView_Previews: PreviewProvider {
    static var previews: some View {
        programView()
    }
}
