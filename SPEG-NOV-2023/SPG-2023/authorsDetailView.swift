//
//  authorsDetailView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct authorsDetailView: View {
 @State var author: personsStruct
 @State private var isFavorited = false
 @State private var imageName = "heart"
    var body: some View {
//     Text("Coming Soon")
     VStack{
      let imageName = "\(author.CMB_ID)"
      Image(imageName)
       .clipShape(Circle())
       .overlay(Circle().stroke(Color.gray, lineWidth: 4))
      Text(author.PD_NAME)
       .fontWeight(.bold)
       .foregroundColor(Color(hue: 0.331, saturation: 0.886, brightness: 0.708))
      VStack{
       Text(author.PD_WORKPROFILE)
       Text(author.PD_ORGANIZATION)
       Text(author.PD_COUNTRY)
      }.foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
      Spacer()
      let filteredAuthorData = scheduleDataArr.filter { scheduleItem in
  //     return _theme.contains { thitem in
       return scheduleItem.AU_ID == author.CMB_ID
  //     }
      }
      List(filteredAuthorData, id:\.CMB_ID){ authPaper in
       NavigationLink(destination: taskSummaryView(event: authPaper)){
        VStack(alignment: .leading){
         Spacer()
         HStack{
          Text(authPaper.EVT_PAPER_EVENT_PAPERID)
           .fontWeight(.bold)
          Text("(")
          Text(authPaper.EVT_TYPE)
           .fontWeight(.bold)
          Text(")")
         }.foregroundColor(Color.green)
          .font(.system(size: 13))
         Spacer()
         Text(authPaper.EVT_TITLE).foregroundColor(Color.green)
          .font(.system(size: 12))
         Spacer()
         HStack{
          Text("Session: ").bold()
          Text(authPaper.TH_THEME)
         }.foregroundColor(Color.gray)
          .font(.system(size: 11))
         Spacer()
         HStack{
          Text(authPaper.SLOT_VENUE1)
          Spacer()
          HStack{
           Text(authPaper.SLOT_START)
           Text("-")
           Text(authPaper.SLOT_DATE)
          }
          Spacer()
//          Image(systemName: "heart")
          Image(systemName: imageName)
//              .onTapGesture {
//               addFavourites(from: authPaper.CMB_ID)
//                  isFavorited.toggle()
//                  imageName = isFavorited ? "heart.fill" : "heart"
//              }

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
     .navigationBarItems(leading: HeaderView(header: "Authors"))
     footerView()
    }
}

struct authorsDetailView_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
          }
    }
}
