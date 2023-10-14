//
//  splashView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct splashView: View {
 @State private var isSplashActive = false
    var body: some View {
     if isSplashActive{
      home()
     }
     else{
      VStack{
       Image("splash_full")
        .aspectRatio(contentMode: .fit)
      }.onAppear{
       DispatchQueue.main.asyncAfter(deadline: .now() + 2000.0){
        self.isSplashActive = true
       }
      }
      
     }
    }
}

struct splashView_Previews: PreviewProvider {
    static var previews: some View {
        splashView()
    }
}
