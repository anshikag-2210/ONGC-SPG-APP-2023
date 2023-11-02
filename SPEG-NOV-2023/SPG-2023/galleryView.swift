//
//  galleryView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 17/10/23.
//

import SwiftUI

struct GalleryItem: Identifiable {
    let id = UUID()
    let imageURL: URL
}



struct galleryView: View {
 @State private var conferencePhotosData: [GalleryItem] = []
 
 var body: some View {
  VStack{
   let galleryGroupedData = galleryData.reduce(into: [String: [galleryStruct]]()) { result, photo in
    result[photo.IM_CATEGORY, default: []].append(photo)
   }
   let keys = Set(galleryGroupedData.map { $0.key as! String })
   let uniquePhotoCategory = Array(keys)
   ScrollView {
     ForEach(uniquePhotoCategory, id: \.self) { group in
      if let galleryGroupWisedata = galleryGroupedData[group]{
       ScrollView {
        ZStack{
         Rectangle()
             .fill(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
             .frame(maxWidth: .infinity)
         Text(group)
          .fontWeight(.bold)
//             .foregroundColor(Color.green)
             .frame(maxWidth: .infinity)
             .multilineTextAlignment(.leading)
             .lineLimit(nil)
             .padding()
        }
       }
       LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 3), spacing: 2) {
       ForEach(galleryGroupWisedata, id: \.CMB_ID) { item in
        let imageName = "https://spg23-03112023.web.app/images/\(item.IM_PATH)"
        let imageURL = URL(string: imageName)!
        NavigationLink(destination: ImageDetail(imageName: imageName)) {
         RemoteImageView(imageURL: imageURL)
        }
       }
      }
     }
    }
   }
   .navigationBarItems(leading: HeaderView(header: "Gallery"))
//   VStack{
    footerView()
//   }
  }
  
 }
 

}

struct ImageDetail: View {
    let imageName: String
    var body: some View {
     let imageURL = URL(string: imageName)!
     RemoteImageView(imageURL: imageURL)    }
}


struct galleryView_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
