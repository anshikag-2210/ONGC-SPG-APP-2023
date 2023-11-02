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
    VStack(alignment: .leading) {
     HStack {
      Image(systemName: "line.3.horizontal.decrease")
       .foregroundColor(Color.green)
      Text(k)
       .bold()
     }
     Spacer()
    if let themesFilteredData = groupedData[k]{
     ForEach(themesFilteredData, id:\.CMB_ID){ _theme in
      let filteredScheduleData = scheduleDataArr.filter { scheduleItem in
        return scheduleItem.TH_ID == _theme.TH_ID
      }
     if !filteredScheduleData.isEmpty{
       NavigationLink(destination: tracksDetailView(themeData: filteredScheduleData)) {
          ScrollView {
           ZStack{
            Rectangle()
                .fill(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
                .frame(maxWidth: .infinity)
              //  .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
                
            Text(_theme.TH_THEME)
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
     Spacer()
  }

  }
 }
 .navigationBarItems(leading: HeaderView(header: "Sessions"))
 footerView()
}
}

struct tracks_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
      home()
     }//     tracksView(showSheet: .constant(false))
    }
}


