//
//  contactsDetailView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 01/11/23.
//

import SwiftUI

struct contactsDetailView: View {
 let cmteData: [personsStruct]
    var body: some View {
     VStack{
      List(cmteData, id: \.CMB_ID){item in
         VStack(alignment: .leading){
          Text(item.PD_NAME)
           .fontWeight(.bold)
           .foregroundColor(Color(hue: 0.331, saturation: 0.886, brightness: 0.708))
           .multilineTextAlignment(.leading)
          Text(item.PD_WORKPROFILE)
           .foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
           .multilineTextAlignment(.leading)
          Text(item.PD_EMAIL)
           .foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
           .multilineTextAlignment(.leading)
          Text(item.PD_PHONE1)
           .foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
           .multilineTextAlignment(.leading)
         }
      }
     }
     footerView()
    }
}

struct contactsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}