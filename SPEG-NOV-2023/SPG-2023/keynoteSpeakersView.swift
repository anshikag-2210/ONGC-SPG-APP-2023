//
//  keynoteSpeakersView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 16/10/23.
//

import SwiftUI

struct keynoteSpeakersView: View {

 var body: some View {
  let personsGroupedData = personsData.reduce(into: [String: [personsStruct]]()) { result, persons in
   result[persons.PD_PTYPE, default: []].append(persons)
  }
  if let keyNoteSpeakers = personsGroupedData["KEYNOTE"] {
   List(keyNoteSpeakers, id: \.CMB_ID) {item in
    NavigationLink(destination: KeyNoteDetailView(keyNoteSpeaker: item)){
//    NavigationLink(destination: Test()){
    HStack(spacing: 10) {
      Image(systemName: "person.circle.fill")
       .foregroundColor(.green)
       .imageScale(.large)
       .baselineOffset(0)
       .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
      VStack(alignment: .leading){
       Text(item.PD_NAME)
        .fontWeight(.bold)
        .foregroundColor(Color(hue: 0.331, saturation: 0.886, brightness: 0.708))
        .multilineTextAlignment(.leading)
       Text(item.PD_ORGANIZATION)
        .foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
        .multilineTextAlignment(.leading)
      }
     }
    }
    .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
   }
  }
    }
}

struct keynoteSpeakersView_Previews: PreviewProvider {
    static var previews: some View {
        keynoteSpeakersView()
    }
}
