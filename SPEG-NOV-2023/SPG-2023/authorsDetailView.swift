//
//  authorsDetailView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 12/10/23.
//

import SwiftUI

struct authorsDetailView: View {
 @State var author: AuthorsStruct
    var body: some View {
     VStack{
      Image("author1")
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
      VStack{
       Text("Author Paper view")
      }
      Spacer()
      
     }
    }
}

struct authorsDetailView_Previews: PreviewProvider {
    static var previews: some View {
     VStack{
          }
    }
}
