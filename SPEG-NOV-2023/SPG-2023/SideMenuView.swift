//
//  SideMenuView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 05/10/23.
//

import SwiftUI

struct SideMenuView: View {
 @State var showSideMenu: Bool
    var body: some View {
     if showSideMenu{
//      VStack{
//       List{
//        HStack{
//         Image(systemName: "house.fill")
//          .font(.title3)
//          .padding(.vertical, 2)
//          .padding(.horizontal, 5)
//         Text(option.title)
//         Spacer()
//        }.foregroundColor(.green)
//       }
//      }
      ZStack(alignment: .topLeading){
       VStack(alignment: .leading){
        VStack(alignment: .leading){
         ForEach(SideMenuModel.allCases, id: \.self){option in
          NavigationLink(destination: option.view.navigationBarBackButtonHidden(true)){
           HStack{
            Image(systemName: option.imageName)
             .font(.title3)
             .padding(.vertical, 2)
             .padding(.horizontal, 5)
            Text(option.title)
            Spacer()
           }.foregroundColor(.green)
          }
         
         }
        }
        .padding(.horizontal)
        Spacer()
       }.background(Color(hue: 0.345, saturation: 0.049, brightness: 0.923))
       
      }
      .frame(width: 250)
      .offset(x: showSideMenu ? -75 : 0)
      .transition(.move(edge: .leading))
      .onTapGesture {
       withAnimation(Animation.easeInOut) {
        showSideMenu = false
       }
      }
      .gesture(
          DragGesture()
              .onChanged { value in
                 // if value.translation.width > 10 {
                      withAnimation(Animation.easeInOut) {
                       showSideMenu.toggle()
                      }
                  }
              //}
          )
     }
     
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

enum SideMenuModel: Int, CaseIterable{
 case Home
 case Tracks
 case Keynote
 case Schedule
 case Auhors
 case Favourite
 case CECourse
 case About
 
 var title: String{
  switch self{
  case .Home: return "Home"
  case .Tracks: return "Tracks"
  case .Keynote: return "Keynote"
  case .Schedule: return "Schedule"
  case .Auhors: return "Auhors"
  case .Favourite: return "Favourite"
  case .CECourse: return "Notifications"
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
   case .CECourse: return "bell.badge.fill"
   case .About: return "exclamationmark.shield.fill"
   }
 }
 
 var views: String{
   switch self{
   case .Home: return "house.fill"
   case .Tracks: return "book.closed.fill"
   case .Keynote: return "pencil.circle.fill"
   case .Schedule: return "calendar"
   case .Auhors: return "person.2.fill"
   case .Favourite: return "heart.fill"
   case .CECourse: return "bell.badge.fill"
   case .About: return "exclamationmark.shield.fill"
   }
 }
 
 var view: AnyView {
     switch self {
     case .Home: return AnyView(home())
     case .Tracks: return AnyView(tracksView())
     case .Keynote: return AnyView(keynoteSpeakersView())
     case .Schedule: return AnyView(ScheduleView())
     case .Auhors: return AnyView(AuthorsView())
     case .Favourite: return AnyView(favouritesView())
     case .CECourse: return AnyView(CECourseView())
     case .About: return AnyView(sponsorsView())
     }
 }
}
