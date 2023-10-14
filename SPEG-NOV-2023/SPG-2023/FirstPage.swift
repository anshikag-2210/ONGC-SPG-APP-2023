//
//  home.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 04/10/23.
//

import SwiftUI

struct FirstPage: View {
 var body: some View {
  NavigationView(){
   VStack{
    NavigationLink(destination: Test()) {
     VStack{
      Image(systemName: "tray.full")
      Text("Click")
     }
    }
   }
  }
  ZStack{
   VStack{
    VStack{
     Text("Tracks")
    }.background(Rectangle().fill(Color.gray).frame(maxWidth: .infinity))
            
    Spacer()
    VStack{
     ScrollView{
      ForEach(0..<10, id: \.self){id in
       Text("TracksView Coming Soon")
       Rectangle()
        .foregroundColor(.blue.opacity(1))
        .frame(maxWidth: .infinity)
        .frame(height: 250)
      }
     }
    }
    Spacer()
    VStack{
     Text("Footer")
    }
   }
  }
 }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
     FirstPage()
    }
}

//extension home{
// private var homeView: some View{
//  ZStack{
//   VStack {
//    Spacer()
//    VStack{
//     Text("Header")
//    }
//    Spacer()
//    VStack {
//     // VStack for showing options.
//     ForEach(0...4, id: \.self) { row in
//      Spacer()
//      HStack{
//       ForEach(0...2, id: \.self) { col in
//        Spacer()
//        Button {
//         show = (row*3 + col)
//        } label: {
//         VStack {
//          Image(systemName: img[row*3 + col])
//           .resizable()
//           .scaledToFit()
//           .frame(width: 40)
//           .onTapGesture{
//            showSheet.toggle()
//           }
////           .sheet(isPresented: $showSheet){
////            tracksView()
////             .presentationDetents([.fraction(0.5)])
////           }
//          Text(title[row*3 + col])
//           .font(.system(size: 20))
//         }
//        }
//        Spacer()
//       }
//      }
//      Spacer()
//     }
//    }
//    .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
//    Spacer()
//    VStack{
//     Text("Footer")
//    }
//    Spacer()
//   }
//  }
// }
// private var trackView: some View{
//  ZStack{
//   VStack{
//    ScrollView{
//     ForEach(0..<50, id: \.self){id in
//      Rectangle()
//       .foregroundColor(Color(hue: 1.0, saturation: 0.1, brightness: 0.474, opacity: 1))
//       .frame(maxWidth: .infinity)
//       .frame(height: 100)
//     }
//    }
//   }
//  }
// }
//}
 



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
