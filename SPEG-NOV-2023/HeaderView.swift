//
//  HeaderView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 18/10/23.
//

import SwiftUI

struct HeaderView: View {
 @State var header: String
    var body: some View {
     VStack{
//      Text(header)
     }
     .navigationTitle(header)
     .background(Color.gray)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
