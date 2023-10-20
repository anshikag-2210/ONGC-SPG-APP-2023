//
//  RegistrationView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI
import WebKit

struct RegistrationView: View {
 @State private var showWebView = false
 private let urlString: String = "https://spgindia.org/conference-registration/"
    var body: some View {
     VStack(spacing: 40) {
      WebView(url: URL(string: urlString)!)
//       .frame(height:500)
        }
     
    }
}

struct WebView: UIViewRepresentable{
 var url: URL
 func makeUIView(context: Context) -> WKWebView{
  return WKWebView()
 }
 
 func updateUIView(_ uiView: WKWebView, context: Context) {
  let request = URLRequest(url:url)
  uiView.load(request)
 }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
