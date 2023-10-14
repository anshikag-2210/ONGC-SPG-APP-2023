//
//  home.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 04/10/23.
//

import SwiftUI

struct Main: View {
 @State private var show: Int = -1
 @State private var showSheet: Bool = false
 @State private var showSideMenu: Bool = false
 @State var title = ["Tracks", "Schedule","Favourites", "Keynote\nSpeakers", "Conference\nLayout", "Exhebition\nLayout", "Authors", "Delegate\nRegistration", "Sponsors", "CE Courses", "Program\nBriefs", "Photo\nGallery", "Analysis", "Contacts", "Navigate"]
 @State var img = ["book.closed.fill", "calendar","heart.fill", "pencil.circle.fill", "person.2.fill", "person.2.fill", "person.2.fill", "rectangle.and.pencil.and.ellipsis", "figure.2.and.child.holdinghands", "graduationcap.fill", "highlighter", "photo.stack.fill", "square.and.arrow.up.fill", "phone.fill.arrow.up.right", "map.fill"]
 var body: some View {
  ZStack{
   NavigationView{
    ZStack(alignment: .topLeading){
     switch show{
     case 0:
       NavigationLink(destination: tracksView()) {
                 EmptyView()
           }
//               tracksView()
      trackView
     case 1:
      Text("Schedule")
     case 2:
      Text("Favourites")
     case 3:
      Text("Keynote Speakers")
     case 4:
      Text("Conference Layout")
     case 5:
      Text("Exhebition Layout")
     case 6:
      Text("Authors")
     case 7:
      Text("Delegate Registration")
     case 8:
      Text("Sponsors")
     case 9:
      Text("CE Courses")
     case 10:
      Text("Program Briefs")
     case 11:
      Text("Photo Gallery")
     case 12:
      Text("Analysis")
     case 13:
      Text("Contacts")
     case 14:
      Text("Navigate")
     default:
      homeView
     }
     VStack {
      Spacer()
      VStack{
       Text("Header")
      }
      Spacer()
      VStack {
       // VStack for showing options.
       ForEach(0...4, id: \.self) { row in
        Spacer()
        HStack{
         ForEach(0...2, id: \.self) { col in
          Spacer()
          NavigationLink(destination: tracksView()){
           VStack{
            Image(systemName: img[row*3 + col])
             .resizable()
             .scaledToFit()
             .frame(width: 40)
            Text(title[row*3 + col])
             .font(.system(size: 20))
           }
//           Button {
//            show = (row*3 + col)
//           } label: {
//            VStack {
//             Image(systemName: img[row*3 + col])
//              .resizable()
//              .scaledToFit()
//              .frame(width: 40)
//             Text(title[row*3 + col])
//              .font(.system(size: 20))
//            }
          // }
           
          }
          
          Spacer()
         }
        }
        Spacer()
       }
      }
      .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
      Spacer()
      VStack{
       Text("Footer")
      }
      Spacer()
     }
    }
   }
    if showSideMenu{
     ZStack{
      //Color.white.opacity(0.3)
     }
     SideMenuView()
       .frame(width: 250)
       .offset(x: showSideMenu ? -75 : 0)
     .transition(.move(edge: .leading))
     .onTapGesture {
      withAnimation(Animation.easeInOut) {
       showSideMenu = false
      }
     }
   }
   }
  .gesture(
      DragGesture()
          .onChanged { value in
              if value.translation.width > 10 {
                  withAnimation(Animation.easeInOut) {
                   showSideMenu = true
                  }
              }
          }
      )
 }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

extension Main{
 private var homeView: some View{
  ZStack{
   VStack {
    Spacer()
    VStack{
     Text("Header")
    }
    Spacer()
    VStack {
     // VStack for showing options.
     ForEach(0...4, id: \.self) { row in
      Spacer()
      HStack{
       ForEach(0...2, id: \.self) { col in
        Spacer()
        Button {
         show = (row*3 + col)
        } label: {
         VStack {
          Image(systemName: img[row*3 + col])
           .resizable()
           .scaledToFit()
           .frame(width: 40)
           .onTapGesture{
            showSheet.toggle()
           }
//           .sheet(isPresented: $showSheet){
//            tracksView()
//             .presentationDetents([.fraction(0.5)])
//           }
          Text(title[row*3 + col])
           .font(.system(size: 20))
         }
        }
        Spacer()
       }
      }
      Spacer()
     }
    }
    .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
    Spacer()
    VStack{
     Text("Footer")
    }
    Spacer()
   }
  }
 }
 private var trackView: some View{
  ZStack{
   VStack{
    ScrollView{
     ForEach(0..<50, id: \.self){id in
      Rectangle()
       .foregroundColor(Color(hue: 1.0, saturation: 0.1, brightness: 0.474, opacity: 1))
       .frame(maxWidth: .infinity)
       .frame(height: 100)
     }
    }
   }
  }
 }
}
 



// ====You tube Menue ========
//    if showSideMenu{
//     ZStack{
//      Color.red.opacity(0.3)
//     }
////     SideMenuView()
////      .frame(width: 250)
////      .offset(x: showSideMenu ? 0 : -250)
////     .transition(.move(edge: .leading))
//     .onTapGesture {
//      withAnimation(Animation.easeInOut) {
//       showSideMenu = false
//      }
//     }
//    }
//   SideMenuView()
//         .frame(width: 250)
//         .offset(x: showSideMenu ? 0 : -80)
//   }
//========================
