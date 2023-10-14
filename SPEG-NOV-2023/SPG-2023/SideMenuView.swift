//
//  SideMenuView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 05/10/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
     ZStack(alignment: .topLeading){
      VStack(alignment: .leading){
       VStack(alignment: .leading){
        ForEach(SideMenuModel.allCases, id: \.self){option in
         HStack{

          Image(systemName: option.imageName)
           .font(.title3)
           .padding(.vertical, 2)
           .padding(.horizontal, 5)
          Text(option.title)
          Spacer()
         } .foregroundColor(.green)

        }
       }
       .padding(.horizontal)
       Spacer()
      }.background(Color(hue: 0.345, saturation: 0.049, brightness: 0.923))
       
     }

    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

enum SideMenuModel: Int, CaseIterable{
 case Home
 case Tracks
 case Keynote
 case Schedule
 case Auhors
 case Favourite
 case Notifications
 case About
 
 var title: String{
  switch self{
  case .Home: return "Home"
  case .Tracks: return "Tracks"
  case .Keynote: return "Keynote"
  case .Schedule: return "Schedule"
  case .Auhors: return "Auhors"
  case .Favourite: return "Favourite"
  case .Notifications: return "Notifications"
  case .About: return "About"
  }
 }

  var imageName: String{
   switch self{
   case .Home: return "house.fill"
   case .Tracks: return "book.closed.fill"
   case .Keynote: return "pencil.circle.fill"
   case .Schedule: return "calendar"
   case .Auhors: return "person.2.fill"
   case .Favourite: return "heart.fill"
   case .Notifications: return "bell.badge.fill"
   case .About: return "exclamationmark.shield.fill"
   }
 }
}
