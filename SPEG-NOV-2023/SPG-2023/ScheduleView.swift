//
//  ScheduleView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct ScheduleView: View {
 @State private var selectedTab = 0
 @State var _url = "https://spg23-03112023-default-rtdb.asia-southeast1.firebasedatabase.app/tabs/data/V_SCHEDULE.json"
    var body: some View {
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
       ScheduleDetailsView (day: selectedTab + 1)
              .padding()
      }

      Spacer()
//      VStack{
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
     }
     .onAppear{
      fetchScheduleJSONData(from: _url)
     }
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
     ScheduleDetailsView(day: 1)
    }
}
