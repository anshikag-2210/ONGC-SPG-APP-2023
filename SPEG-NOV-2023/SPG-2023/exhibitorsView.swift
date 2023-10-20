//
//  exhibitorsView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 19/10/23.
//

import SwiftUI
import SafariServices

struct exhibitorsView: View {
    var body: some View {
      let orgGroupedData = organizationsData.reduce(into: [String: [organizationsStruct]]()) { result, orgType in
       result[orgType.OS_TYPE, default: []].append(orgType)
      }
      if let exhibitors = orgGroupedData["Exhibitor"] {
       let _subtypeData = exhibitors.reduce(into: [String: [organizationsStruct]]()) { result, orgSubType in
        result[orgSubType.OS_SUBTYPE, default: []].append(orgSubType)
       }
       let keys = _subtypeData.map{$0.key}
       List(keys, id: \.self){ k in
        ZStack {
            Rectangle()
          .fill(Color.green)
                .frame(height: 40)
         HStack{
          Text(k)
           .foregroundColor(Color.white)
          Spacer()
         }
        }
        if let sponsors = _subtypeData[k]{
         ForEach(sponsors, id: \.CMB_ID){item in
          let imageName = "CMP_\(item.CMB_ID)"
    //      Text(imageName)
          Button(action: {
           if let url = URL(string: item.OS_WEBSITE) {
                  let safariViewController = SFSafariViewController(url: url)
                  UIApplication.shared.windows.first?.rootViewController?.present(safariViewController, animated: true, completion: nil)
              }
          }) {
           HStack{
            Spacer()
            VStack{
             Image(imageName)
             .resizable()
             .aspectRatio(CGSize(width: 16, height: 9), contentMode: .fit)
             Text(item.OS_NAME)
            }
            Spacer()
           }
          }
         }
         Spacer()
        }
       }
       .navigationBarItems(leading: HeaderView(header: "Exhibitor"))
       footerView()


      }
      
    //     List {
    //         ForEach(1...33, id: \.self) { index in
    //             let imageName = "CMP_\(index)"
    //          Button(action: {
    //              if let url = URL(string: _imgurl) {
    //                  let safariViewController = SFSafariViewController(url: url)
    //                  UIApplication.shared.windows.first?.rootViewController?.present(safariViewController, animated: true, completion: nil)
    //              }
    //          }) {
    //              Image(imageName)
    //                  .resizable()
    //                   .frame(height: 100)
    //                  .foregroundColor(Color.green)
    //           Text(name)
    //               .foregroundColor(Color.green)
    //          }
    //         }
    //       .padding()
    //     }

     }
}

struct exhibitorsView_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
