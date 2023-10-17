//
//  KeyNoteDetailView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 16/10/23.
//

import SwiftUI

struct KeyNoteDetailView: View {
 @State var keyNoteSpeaker: personsStruct
 var body: some View {
 // VStack{
   ScrollView{
    Image("author1")
     .clipShape(Circle())
     .overlay(Circle().stroke(Color.gray, lineWidth: 4))
    Text(keyNoteSpeaker.PD_NAME)
     .fontWeight(.bold)
     .foregroundColor(Color(hue: 0.331, saturation: 0.886, brightness: 0.708))
    VStack{
     Text(keyNoteSpeaker.PD_WORKPROFILE)
     Text(keyNoteSpeaker.PD_ORGANIZATION)
     Text(keyNoteSpeaker.PD_COUNTRY)
    }.foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
    Spacer()
    HStack{
     Text("Brief Biio")
      .fontWeight(.bold)
      .foregroundColor(Color(hue: 0.331, saturation: 0.886, brightness: 0.708))
     Spacer()
    }
    Divider()
    Text(keyNoteSpeaker.PD_BIO)
   Spacer()
   let filteredData = scheduleDataArr.filter { scheduleItem in
    return scheduleItem.AU_ID == keyNoteSpeaker.CMB_ID
   }
   ForEach(filteredData, id:\.CMB_ID){ paperDetails in
    NavigationLink(destination: taskSummaryView(event: paperDetails)){
     VStack(alignment: .leading){
      Spacer()
      HStack{
       Text(paperDetails.EVT_PAPER_EVENT_PAPERID)
        .fontWeight(.bold)
       Text("(")
       Text(paperDetails.EVT_TYPE)
        .fontWeight(.bold)
       Text(")")
      }.foregroundColor(Color.green)
       .font(.system(size: 13))
      Spacer()
      Text(paperDetails.EVT_TITLE).foregroundColor(Color.green)
       .font(.system(size: 12))
      Spacer()
      HStack{
       Text("Session: ").bold()
       Text(paperDetails.TH_THEME)
      }.foregroundColor(Color.gray)
       .font(.system(size: 11))
      Spacer()
      HStack{
       Text(paperDetails.SLOT_VENUE1)
       Spacer()
       HStack{
        Text(paperDetails.SLOT_START)
        Text("-")
        Text(paperDetails.SLOT_DATE)
       }
       Spacer()
       Image(systemName: "heart")
       Spacer()
      }.foregroundColor(Color.red)
       .font(.system(size: 11))
      Spacer()
     }
     .background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
     .padding(3)
    }
   }
    Spacer()
  }
// }
}
}

struct KeyNoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
      
     }
    }
}
