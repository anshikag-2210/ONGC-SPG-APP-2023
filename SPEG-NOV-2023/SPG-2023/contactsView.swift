//
//  contactsView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 18/10/23.
//

import SwiftUI

struct contactsView: View {
    var body: some View {
     VStack{
      let personsGroupedData = personsData.reduce(into: [String: [personsStruct]]()) { result, persons in
       result[persons.PD_PTYPE, default: []].append(persons)
      }
      if let contactsData = personsGroupedData["COMMITTEE"] {
       List(contactsData, id: \.CMB_ID){item in
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

     }
     .navigationBarItems(leading: HeaderView(header: "Contacts"))
     footerView()
    }
}

struct contactsView_Previews: PreviewProvider {
    static var previews: some View {
        contactsView()
    }
}
