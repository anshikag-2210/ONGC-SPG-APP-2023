//
//  webViewHelp.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 01/11/23.
//

import Foundation
import SwiftUI
import WebKit

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
