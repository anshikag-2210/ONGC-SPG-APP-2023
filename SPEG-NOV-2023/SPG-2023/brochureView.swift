//
//  brochureView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 02/11/23.
//

import SwiftUI

struct brochureView: View {
 @State private var showWebView = false
 private let urlString: String = "https://spgindia.org/spg2023/document/spg-kochi-07-10-2023-brochure.pdf"
    var body: some View {
     VStack(spacing: 40) {
      WebView(url: URL(string: urlString)!)
       .navigationBarTitle("Brochure", displayMode: .large)
        }
     .navigationBarItems(leading: HeaderView(header: "Brochure"))
     footerView()

    }
}

struct brochureView_Previews: PreviewProvider {
    static var previews: some View {
        brochureView()
    }
}
