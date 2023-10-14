//
//  home.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 04/10/23.
//
///=========
// add splash screen
//========

import SwiftUI
import WebKit

struct home: View {
 @State private var isDetailViewActive = false
 @State private var show: Int = -1
 @State private var showSheet: Bool = false
 @State private var showSideMenu: Bool = false
 var body: some View {
  ZStack{
   NavigationView{
    ZStack(alignment: .topLeading){
     VStack {
      Spacer()
      //Header
      VStack{
       Image("showcasespg")
      }
      Spacer()
      //page
      VStack {
       // VStack for showing options.
       Spacer()
       HStack{
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "book.closed.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Tracks")
            .font(.system(size: 15))
         }
         
        }
        Spacer()
        NavigationLink(destination: ScheduleView()){
         VStack{
           Image(systemName: "calendar")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Schedule")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Favourites")
            .font(.system(size: 15))
         }
        }
        Spacer()
       }

       Spacer()
       HStack{
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "pencil.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Keynote \n Speakers")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: ConferenceView()){
         VStack{
           Image(systemName: "person.2.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Conference \n Layout")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: ExhibitionView()){
         VStack{
           Image(systemName: "person.2.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Exhebition \n Layout")
            .font(.system(size: 15))
         }
        }
        Spacer()
       }
       Spacer()
       HStack{
        Spacer()
        NavigationLink(destination: AuthorsView()){
         VStack{
           Image(systemName: "person.2.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Authors")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: RegistrationView()){
         VStack{
           Image(systemName: "rectangle.and.pencil.and.ellipsis")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Delegate \n Registration")
            .font(.system(size:15))
         }
        }
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "figure.2.and.child.holdinghands")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Sponsors")
            .font(.system(size: 15))
         }
        }
        Spacer()
       }
       Spacer()
       HStack{
        Spacer()
        NavigationLink(destination: CECourseView()){
         VStack{
           Image(systemName: "graduationcap.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 40)
           Text("CE Courses")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: programView()){
         VStack{
           Image(systemName: "highlighter")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Program\nBriefs")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "photo.stack.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Photo\nGallery")
            .font(.system(size: 15))
         }
        }
        Spacer()
       }
       Spacer()
       HStack{
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "square.and.arrow.up.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Analysis")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: tracksView()){
         VStack{
           Image(systemName: "phone.fill.arrow.up.right")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Contacts")
            .font(.system(size: 15))
         }
        }
        Spacer()
        NavigationLink(destination: NavigateView()){
         VStack{
           Image(systemName: "map.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
           Text("Navigate")
            .font(.system(size: 15))
         }
        }
        Spacer()
       }
       }
    .navigationBarTitle("Home", displayMode: .large)
//      .onTapGesture {
//       self.isDetailViewActive = true
//   }
      .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
      .padding()
      Spacer()
      //footer
      ZStack {
          Rectangle()
        .fill(Color(hue: 0.417, saturation: 0.739, brightness: 0.655, opacity: 0.401))
              .frame(width: .infinity, height: 40)
          Text("Welcome to SPG 2023")
              .foregroundColor(.green)
              
      }
     }
     }
    }
    if showSideMenu{
     ZStack{
      Color.white.opacity(0.3)
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



struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

extension home{
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
