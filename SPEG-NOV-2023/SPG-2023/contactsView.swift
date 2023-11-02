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
       
       let CommitteeGroupedData = contactsData.reduce(into: [String: [personsStruct]]()) { result, cmte in
        result[cmte.PD_WORKPROFILE, default: []].append(cmte)
       }
       let keys = Set(CommitteeGroupedData.map { $0.key as! String })
       let uniqueWorkprofile = Array(keys)
       ScrollView{
        ForEach(uniqueWorkprofile, id: \.self) { workProfile in
         if let committeeFilteredData = CommitteeGroupedData[workProfile]{
          NavigationLink(destination: contactsDetailView(cmteData: committeeFilteredData)){
           
           ScrollView {
            ZStack{
             Rectangle()
                 .fill(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
                 .frame(maxWidth: .infinity)
             Text(workProfile)
                 .foregroundColor(Color.green)
                 .frame(maxWidth: .infinity, alignment: .leading)
                 .multilineTextAlignment(.leading)
                 .lineLimit(nil)
                 .padding()
            }
           }
          }
         }
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
