//
//  galleryView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 17/10/23.
//

import SwiftUI

struct galleryView: View {
 var body: some View {
  VStack{
   ScrollView {
       LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
        ForEach(galleryData, id: \.CMB_ID) { item in
//           Text(item.IM_PATH)
//           let imageName = "\(item.IM_PATH)"
         if let imageName = item.IM_PATH.split(separator: ".").first.map(String.init){
          Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
         }

           }
       }
       .padding(10)
   }
   .navigationBarItems(leading: HeaderView(header: "Gallery"))
//   VStack{
    footerView()
//   }
  }
  
 }
}

struct galleryView_Previews: PreviewProvider {
    static var previews: some View {
        galleryView()
    }
}
