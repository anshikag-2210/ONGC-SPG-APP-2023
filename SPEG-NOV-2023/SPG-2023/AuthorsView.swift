//
//  Authors.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 11/10/23.
//

import SwiftUI

struct AuthorsView: View {
 @State private var AuthorsData: [String: AuthorsStruct] = [:]
    var body: some View {
     VStack{
      let keys = AuthorsData.map{$0.key}
      let authorsData = AuthorsData.map{$0.value}
      List(authorsData, id: \.CMB_ID) { item in
       NavigationLink(destination: authorsDetailView(author: item)){
        HStack(spacing: 10) {
         Image(systemName: "person.circle.fill")
          .foregroundColor(.green)
          .imageScale(.large)
          .baselineOffset(0)
          .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
         VStack(alignment: .leading){
          Text(item.PD_NAME)
           .fontWeight(.bold)
           .foregroundColor(Color(hue: 0.331, saturation: 0.886, brightness: 0.708))
           .multilineTextAlignment(.leading)
          Text(item.PD_ORGANIZATION)
           .foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.506))
           .multilineTextAlignment(.leading)
         }
        }
       }
       .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
      }.onAppear {
       fetchJSONData()
      }
      .listStyle(PlainListStyle())
      VStack{
       Text("Footer")
      }
     }
     .onAppear {
           fetchJSONData()
          }
    }
 func fetchJSONData() {
     guard let url = URL(string: "https://spg23-03112023-default-rtdb.asia-southeast1.firebasedatabase.app/tabs/data/PERSONS.json?orderBy=%22PD_PTYPE%22&equalTo=%22AUTHOR%22") else {
      print("in else")
         return
     }
  fetchData(from: url) { (result: Result<[String: AuthorsStruct], Error>) in
         switch result {
         case .success(let decodedData):
             DispatchQueue.main.async {
                 self.AuthorsData = decodedData
             }
         case .failure(let error):
             print("Error fetching data: \(error)")
         }
     }
 }
}

struct AuthorsView_Previews: PreviewProvider {
    static var previews: some View {
     AuthorsView()
    }
}

struct AuthorsStruct: Decodable {
    let CMB_ID: String
    let PD_COUNTRY: String
    let PD_EMAIL: String
    let PD_NAME: String
    let PD_ORGANIZATION: String
    let PD_PHONE1: String
    let PD_PTYPE: String
    let PD_WORKPROFILE: String
    // Add other properties as needed to match your JSON structure
}
