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
     ScrollView{
      VStack(alignment: .leading){
       HStack{
        Text(event.EVT_PAPER_EVENT_PAPERID)
         .fontWeight(.bold).foregroundColor(Color.green)
        Spacer()
        Image(systemName: "heart")
        .foregroundColor(Color.red)
        .font(.system(size: 11))
       }
       .padding(1)
       Group{
        Text("Title").fontWeight(.bold).foregroundColor(Color.green)
        Divider()
        Text(event.EVT_TITLE)
        Spacer()
       }
       Group{
        Text("Session").fontWeight(.bold).foregroundColor(Color.green)
        Divider()
        Text(event.TH_THEME)
        Spacer()
       }
       Group{
        Text("Author").fontWeight(.bold).foregroundColor(Color.green)
        Divider()
        Text(event.AU_NAME)
        Spacer()
       }
       Group{
        Text("Co-Authors").fontWeight(.bold).foregroundColor(Color.green)
        Divider()
        Text(event.EVT_COAUTHORS)
        Spacer()
       }
       Group{
        Text("Presenting Author").fontWeight(.bold).foregroundColor(Color.green)
        Divider()
        Text(event.AU_NAME)
        Spacer()
       }
       Group{
        Text("Brief").fontWeight(.bold).foregroundColor(Color.green)
        Divider()
        Text(event.TH_THEME)
        Spacer()
       }
      }
      .padding()
    //  Spacer()
     }
     Spacer()
    }
}

struct taskSummaryView_Previews: PreviewProvider {
    static var previews: some View {
//     paperSummaryView(taskSummary: )
     VStack{
      
     }
    }
}
