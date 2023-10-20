//
//  footerView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 18/10/23.
//

import SwiftUI

struct footerView: View {
    var body: some View {
     ZStack {
         Rectangle()
       .fill(Color(hue: 0.417, saturation: 0.739, brightness: 0.655, opacity: 0.401))
             .frame(height: 40)
      NavigationLink(destination: home().navigationBarBackButtonHidden(true)){
       Image(systemName: "house.fill")
        .foregroundColor(Color.green)
      }
     }
    }
}

struct footerView_Previews: PreviewProvider {
    static var previews: some View {
        footerView()
    }
}
