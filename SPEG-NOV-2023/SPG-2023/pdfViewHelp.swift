//
//  pdfViewHelp.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI

import WebKit

struct PDFView: UIViewRepresentable {
 let localFileURL: URL

 func makeUIView(context: Context) -> WKWebView {
     let webView = WKWebView()
     webView.loadFileURL(localFileURL, allowingReadAccessTo: localFileURL)
     return webView
 }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}


struct pdfViewHelp: View {
 var body: some View {
  VStack{
   
  }
 }
}

struct pdfViewHelp_Previews: PreviewProvider {
    static var previews: some View {
        pdfViewHelp()
    }
}
