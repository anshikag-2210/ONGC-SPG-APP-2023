//
//  tracks.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 05/10/23.
//

import SwiftUI

struct tracksView: View{
//@State private var tracksdata: [tracksStruct] = []
var body: some View {
 let groupedData = themesData.reduce(into: [String: [themeStruct]]()) { result, themeItem in
  result[themeItem.TH_TYPE, default: []].append(themeItem)
 }
  let keys = Set(groupedData.map { $0.key as! String })
  let uniqueKeys = Array(keys)
 ScrollView{
 ForEach(uniqueKeys, id: \.self) { k in
 // VStack(alignment: .leading) {
   HStack {
    Image(systemName: "line.3.horizontal.decrease")
     .foregroundColor(Color.green)
    Text(k)
     .bold()
    Spacer()
   }
  if let themesFilteredData = groupedData[k]{
   ForEach(themesFilteredData, id:\.CMB_ID){ _theme in
    let filteredScheduleData = scheduleDataArr.filter { scheduleItem in
//     return _theme.contains { thitem in
      return scheduleItem.TH_ID == _theme.TH_ID
//     }
    }
     if !filteredScheduleData.isEmpty{
      NavigationLink(destination: tracksDetailView(themeData: filteredScheduleData)) {
       Text(_theme.TH_THEME)
             .foregroundColor(Color.green)
             .padding()
             Spacer()
      } .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
        .padding(5)
     }
    }
  }
                     
//   if let sessionData = groupedData[k]{
//    let filteredScheduleData = scheduleDataArr.filter { scheduleItem in
//        return sessionData.contains { sessionItem in
//            return sessionItem.TH_ID == scheduleItem.TH_ID
//        }
//    }
//    if !filteredScheduleData.isEmpty {
//     let ThemeWiseData = filteredScheduleData.reduce(into: [String: [scheduleStruct]]()) { result, thdata in
//      result[thdata.TH_THEME, default: []].append(thdata)
//     }
//     let themekeys = Set(ThemeWiseData.map { $0.key as! String })
//     let themeuniqueKeys = Array(themekeys)
//
////     ForEach(themeuniqueKeys, id: \.self){ _theme in
////     NavigationLink(destination: ScheduleDetailsView(dayData: ThemeWiseData[_theme])) {
////       Text(_theme)
////       .foregroundColor(Color.green)
////       .padding()
////      Spacer()
////      } .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
////       .padding(4)
////     }
//
//     ForEach(filteredScheduleData, id: \.CMB_ID){ _theme in
//     NavigationLink(destination: ScheduleDetailsView(dayData: filteredScheduleData)) {
//       Text(_theme.TH_THEME)
//       .foregroundColor(Color.green)
//       .padding()
//      Spacer()
//      } .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
//       .padding(4)
//     }
//    }
//   }
   Spacer()
  }
// }
 }
}
}

struct tracks_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
      
     }//     tracksView(showSheet: .constant(false))
    }
}



