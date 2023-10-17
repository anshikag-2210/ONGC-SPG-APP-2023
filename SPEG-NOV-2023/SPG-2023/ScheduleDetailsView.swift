//
//  ScheduleDetailsView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct ScheduleDetailsView: View {
 let dayData: [scheduleStruct]
 var body: some View {
  VStack{
   List(dayData, id: \.CMB_ID) { event in
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
    }
   }
   
//   if(day == 1){
//    //Text("Day1")
//    VStack{
//    if let day1Data = groupedData["DAY 1"] {
//     List(day1Data, id: \.CMB_ID) { event in
//      VStack(alignment: .leading){
//       HStack{
//        Text(event.EVT_PAPER_EVENT_PAPERID)
//         .fontWeight(.bold)
//        Text("(")
//        Text(event.EVT_TYPE)
//         .fontWeight(.bold)
//        Text(")")
//       }.foregroundColor(Color.green)
//        .font(.system(size: 13))
//
//       Text(event.EVT_TITLE).foregroundColor(Color.green)
//        .font(.system(size: 12))
//       HStack{
//        Text("Session: ").bold()
//        Text(event.TH_THEME)
//       }.foregroundColor(Color.gray)
//        .font(.system(size: 11))
//
//       HStack{
//        Text("Author: ").bold()
//        Text(event.AU_NAME)
//       }.foregroundColor(Color.gray)
//        .font(.system(size: 11))
//       HStack{
//        Text(event.SLOT_VENUE1)
//        Spacer()
//        HStack{
//         Text(event.SLOT_START)
//         Text("-")
//         Text(event.SLOT_DATE)
//        }
//        Spacer()
//        Image(systemName: "heart")
//        Spacer()
//       }.foregroundColor(Color.red)
//        .font(.system(size: 11))
//      }
//      .background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
//     }
//     //     .listStyle(PlainListStyle())
//     .padding()
//    }
//   }
//  }
//    else if(day == 2){
//     VStack{
//      Text("Day2")
//      // @State var ScheduleData = scheduleData.map{$0.value}
//      if let day2Data = groupedData["DAY 2"] {
//       List(day2Data, id: \.CMB_ID) { event in
//        Text(event.SLOT_DAY)
//         .font(.headline)
//         .font(.system(size: 11))
//       }.background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
//        .listStyle(PlainListStyle())
//      }
//     }
//     //    VStack{
//     //     Text("Day2")
//     //     let ScheduleDataDay2 = scheduleData.map{$0.value}
//     //     List(ScheduleDataDay2, id: \.CMB_ID) {event in
//     //      //  VStack(alignment: .leading){
//     //      Text(event.SLOT_DAY).font(Font.headline)
//     //      //      HStack{
//     //      //       Text(event.EVT_PAPER_EVENT_PAPERID)
//     //      //        .fontWeight(.bold)
//     //      //       Text("(")
//     //      //       Text(event.EVT_TYPE)
//     //      //        .fontWeight(.bold)
//     //      //       Text(")")
//     //      //      }.foregroundColor(Color.green)
//     //      //       .font(.system(size: 13))
//     //      //
//     //      //      Text(event.EVT_TITLE).foregroundColor(Color.green)
//     //      //       .font(.system(size: 12))
//     //      //      HStack{
//     //      //       Text("Session: ").bold()
//     //      //       Text(event.TH_THEME)
//     //      //      }.foregroundColor(Color.gray)
//     //      //       .font(.system(size: 11))
//     //      //
//     //      //      HStack{
//     //      //       Text("Author: ").bold()
//     //      //       Text(event.AU_NAME)
//     //      //      }.foregroundColor(Color.gray)
//     //      //       .font(.system(size: 11))
//     //      //      HStack{
//     //      //       Text(event.SLOT_VENUE1)
//     //      //       Spacer()
//     //      //       HStack{
//     //      //        Text(event.SLOT_START)
//     //      //        Text("-")
//     //      //        Text(event.SLOT_DATE)
//     //      //       }
//     //      //       Spacer()
//     //      //       Image(systemName: "heart")
//     //      //       Spacer()
//     //      //      }.foregroundColor(Color.red)
//     //       .font(.system(size: 11))
//     //     }
//     //     .background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
//     //     .listStyle(PlainListStyle())
//     //
//     //     //    NavigationLink(destination: taskSummaryView(event: item)){
//     //     //     Text(item.SLOT_DAY)
//     //     //     Text(item.TH_THEME)
//     //     //     Text("theme")
//     //     //   // }
//     //    }
//     //    .onAppear {
//     //     fetchScheduleJSONDataFromObj(from: _urlDay2)
//     //    }
//    }
//    else{
//     VStack{
//      Text("Day3")
//      // @State var ScheduleData = scheduleData.map{$0.value}
//      if let day3Data = groupedData["DAY 3"] {
//       List(day3Data, id: \.CMB_ID) { event in
//        Text(event.SLOT_DAY)
//         .font(.headline)
//         .font(.system(size: 11))
//       }.background(Color(hue: 0.188, saturation: 0.202, brightness: 0.953))
//        .listStyle(PlainListStyle())
//      }
//     }
//    }
   }
//  }
 }
  //     Text("Detailed View for Day \(day)")
  //         .navigationTitle("Day \(day) Details")
// }
 
// func _getDaywiseData(){
//  let groupedData = self.ScheduleData.reduce(into: [String: [[String: String]]]()) { result, dictionary in
//      if let slotDay = dictionary["SLOT_DAY"] as? String {
//          result[slotDay, default: []].append(dictionary)
//      }
//  }
//  return groupedData
// }
}
//}
struct ScheduleDetailsView_Previews: PreviewProvider {
    static var previews: some View {
     ZStack{
      
     }
//     ScheduleDetailsView(dayData: dayData)
    }
}

