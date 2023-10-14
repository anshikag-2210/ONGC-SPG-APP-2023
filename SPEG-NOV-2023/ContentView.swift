//
//  ContentView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 04/10/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
 //@State private var isHomeViewPresented = false
 @State private var redirectToHome = false
 var body: some View{
  NavigationView {
      VStack {
       NavigationLink(destination: home()){
        Text("Home")
//        Button("Go to Home") {
//           // isHomeViewPresented = true
//        }
//        .padding()
//      .opacity(0)
       }
         // Hide the link; it's triggered by the button tap
      }
  }

 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
     ContentView()
    }
}
