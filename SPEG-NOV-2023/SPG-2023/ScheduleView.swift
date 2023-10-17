//
//  ScheduleView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct ScheduleView: View {
 @State private var selectedTab = 0
    var body: some View {
     let groupedData = scheduleDataArr.reduce(into: [String: [scheduleStruct]]()) { result, scheduleItem in
      result[scheduleItem.SLOT_DAY, default: []].append(scheduleItem)
     }
     VStack{

      VStack {
          Picker("", selection: $selectedTab) {
              Text("Day 1").tag(0)
              Text("Day 2").tag(1)
              Text("Day 3").tag(2)
          }
          .pickerStyle(SegmentedPickerStyle())
          .padding(.horizontal)
//          .colorInvert()
          .foregroundColor(.white)
          .background(Color.green)
       if(selectedTab == 1){
        if let dayData = groupedData["DAY 2"] {
         ScheduleDetailsView (dayData: dayData)
        }
       }
       else if(selectedTab == 2){
        if let dayData = groupedData["DAY 3"] {
         ScheduleDetailsView (dayData: dayData)
        }
       }
       else{
        if let dayData = groupedData["DAY 1"] {
         ScheduleDetailsView (dayData: dayData)
        }
       }
//       ScheduleDetailsView (day: selectedTab + 1)
      }
//      .padding()
      Spacer()
     }
//     .onAppear{
//      fetchScheduleJSONData(from: _url)
//     }
    }
}

struct DayView: View {
    let day: Int
    
    var body: some View {
     VStack{
//       NavigationLink("", destination: ScheduleDetailsView(day: day))
     }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
      
     }
    // ScheduleDetailsView(day: 1)
    }
}

// extra code //      VStack{
//       TabView(selection: $selectedTab){
//        ScheduleDetailsView(day: 1)
//         .tabItem {
//          Text("Day 1")
//          }.tag(0)
//        ScheduleDetailsView(day: 2)
//         .tabItem{
//          Text("Day 2")
//          }.tag(1)
//        ScheduleDetailsView(day: 3)
//         .tabItem {
//          Text("Day 3")
//          }.tag(2)
//       }//.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//
// //      NavigationLink("", destination: ScheduleDetailsView(day: selectedTab + 1), isActive: .constant(selectedTab != 0))
//
//      }
