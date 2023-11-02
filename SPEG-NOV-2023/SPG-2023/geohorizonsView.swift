//
//  geohorizonsView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 01/11/23.
//

import SwiftUI

struct geohorizonsView: View {
 @State private var showWebView = false
 private let urlString: String = "https://spgindia.org/geohorizons"
    var body: some View {
     VStack(spacing: 40) {
      WebView(url: URL(string: urlString)!)
        }
     
    }
}

struct geohorizonsView_Previews: PreviewProvider {
    static var previews: some View {
        geohorizonsView()
    }
}
