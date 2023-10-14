//
//  paperSummaryView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct taskSummaryView: View {
 @State var event: scheduleStruct
    var body: some View {
     List{
      VStack(alignment: .leading){
       HStack{
        Text(event.EVT_PAPER_EVENT_PAPERID)
         .fontWeight(.bold)
        Text("(")
        Text(event.EVT_TYPE)
         .fontWeight(.bold)
        Text(")")
       }.foregroundColor(Color.green)
        .font(.system(size: 13))
       
       Text(event.EVT_TITLE).foregroundColor(Color.green)
        .font(.system(size: 12))
       HStack{
        Text("Session: ").bold()
        Text(event.TH_THEME)
       }.foregroundColor(Color.gray)
        .font(.system(size: 11))
       
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
      }
      .background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
     }
     .listStyle(PlainListStyle())
    }
}

struct taskSummaryView_Previews: PreviewProvider {
    static var previews: some View {
//     paperSummaryView(taskSummary: )
     VStack{
      
     }
    }
}
