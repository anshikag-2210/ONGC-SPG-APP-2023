//
//  favouritesView.swift
//  SPG 2023
//
//  Created by Anshika Gangwar on 17/10/23.
//

import SwiftUI
import CoreData

struct favouritesView: View {
// @State private var cbmId: String = ""
 @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        entity: FAVOURITES.entity(),  // Use the name of your Core Data entity
        sortDescriptors: [],  // Add sort descriptors if needed
        predicate: nil  // Add a predicate if needed to filter data
    ) var favourites: FetchedResults<FAVOURITES>
    var body: some View {
     Text("Favourites")
     List {
         ForEach(favourites) { favourite in
             Text(favourite.cmb_id ?? "N/A")
         }
     }
    }
}

struct favouritesView_Previews: PreviewProvider {
    static var previews: some View {
        favouritesView()
    }
}
