//
//  tracksDetailView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 16/10/23.
//

import SwiftUI

struct tracksDetailView: View {
 let themeData: [scheduleStruct]
 var body: some View {
  VStack{
   List(themeData, id: \.CMB_ID) { event in
    NavigationLink(destination: taskSummaryView(event: event)){
     VStack(alignment: .leading){
 //     Text(event.SLOT_DAY)
      Spacer()
      HStack{
       Text(event.EVT_PAPER_EVENT_PAPERID)
        .fontWeight(.bold)
       Text("(")
       Text(event.EVT_TYPE)
        .fontWeight(.bold)
       Text(")")
      }.foregroundColor(Color.green)
       .font(.system(size: 13))
      Spacer()
      Text(event.EVT_TITLE).foregroundColor(Color.green)
       .font(.system(size: 12))
      Spacer()
      HStack{
       Text("Session: ").bold()
       Text(event.TH_THEME)
      }.foregroundColor(Color.gray)
       .font(.system(size: 11))
      Spacer()
      HStack{
       Text("Author: ").bold()
       Text(event.AU_NAME)
      }.foregroundColor(Color.gray)
       .font(.system(size: 11))
      HStack{
       Text(event.SLOT_VENUE1)
       Spacer()
       HStack{
        Text(event.SLOT_START)
        Text("-")
        Text(event.SLOT_DATE)
       }
       Spacer()
       Image(systemName: "heart")
       Spacer()
      }.foregroundColor(Color.red)
       .font(.system(size: 11))
      Spacer()
     }
     .background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
     .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: -10))
    }
    .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: -10))

   }
   }
  .navigationBarItems(leading: HeaderView(header: "Tracks"))
  footerView()

 }
}

struct tracksDetailView_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
      
     }
    }
}
