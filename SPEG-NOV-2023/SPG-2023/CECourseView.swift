import SwiftUI

struct CECourseView: View {
 @State private var data: [CECourseStruct] = []

 var body: some View {
  
  VStack{
//   ZStack {
//       Rectangle()
//     .fill(Color(hue: 0.416, saturation: 0.126, brightness: 0.107, opacity: 0.798))
//           .frame(width: .infinity, height: 40)
//       Text("CE Courses")
//           .foregroundColor(.white)
//           
//   }
 //  NavigationView{
//   if let Mydata = try? PropertyListEncoder().encode(data) {
//       FileManager.default.createFile(atPath: "Data/CECourse.plist", contents: Mydata, attributes: nil)
//   }
   
    List(data, id: \.CMB_ID) { item in
     NavigationLink(destination: CECourseDetailView(cecourseList: item)){
      HStack(spacing: 10) {
       Image(systemName: "arrowtriangle.forward.fill")
        .foregroundColor(.green)
        .imageScale(.small)
        .baselineOffset(0)
       Text(item.CE_TITLE)
        .foregroundColor(.green)
      }
     }
     .background(Color(hue: 0.437, saturation: 0.054, brightness: 0.986))
    }.onAppear {
     fetchJSONData()
    }
    .listStyle(PlainListStyle())
  }
  .navigationBarItems(leading: HeaderView(header: "CE Course"))
  footerView()
 }
  
 func fetchJSONData() {
     guard let url = URL(string: "https://spg23-03112023-default-rtdb.asia-southeast1.firebasedatabase.app/tabs/data/CECOURSES.json") else {
         return
     }
     fetchData(from: url) { (result: Result<[CECourseStruct], Error>) in
         switch result {
         case .success(let decodedData):
             DispatchQueue.main.async {
                 self.data = decodedData
             }
         case .failure(let error):
             print("Error fetching data: \(error)")
         }
     }
 }
// func save_plist(){
//  let fileManager = FileManager.default
////  let destinationDirectoryPath = "/Data"
//  let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
//
//  if let data = try? PropertyListEncoder().encode(data) {
//      // Ensure the directory exists
//      let directoryURL = documentsURL?.appendingPathComponent("CECourseData")
//
//      do {
//          try fileManager.createDirectory(at: directoryURL!, withIntermediateDirectories: true, attributes: nil)
//      } catch {
//          print("Error creating directory: \(error.localizedDescription)")
//      }
//
//      // Save the data to the plist file
//      let plistURL = directoryURL?.appendingPathComponent("CECourse.plist")
//
//      do {
//          try data.write(to: plistURL!)
//          print("Data saved to CECourse.plist")
//      } catch {
//          print("Error saving data to CECourse.plist: \(error.localizedDescription)")
//      }
//  }
//
// }
// func loadPlist() -> [CECourseStruct]? {
//     let fileManager = FileManager.default
//     let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
//     let directoryURL = documentsURL?.appendingPathComponent("CECourseData")
//     let plistURL = directoryURL?.appendingPathComponent("CECourse.plist")
//
//     if let data = try? Data(contentsOf: plistURL!),
//        let decodedData = try? PropertyListDecoder().decode([CECourseStruct].self, from: data) {
//         return decodedData
//     } else {
//         print("Error reading CECourse.plist")
//         return nil
//     }
// }

}
struct CECourseView_Previews: PreviewProvider {
    static var previews: some View {
     CECourseView()
    }
}


struct CECourseStruct: Codable {
    let CE_COURSEID: String
    let CE_FACULTY: String
    let CE_FACULTY_DESC: String
    let CE_FACULTY_ID: String
    let CE_ID: String
    let CE_THEME: String
    let CE_TITLE: String
    let CMB_ID: String
    let CE_COURSE_DESC: String
    let CE_DATE: String
    let CE_OUTLINE: String
    let CE_OBJECTIVE: String
    // Add other properties as needed to match your JSON structure

    // Implement the Encodable methods to conform to both protocols
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(CE_COURSEID, forKey: .CE_COURSEID)
        try container.encode(CE_FACULTY, forKey: .CE_FACULTY)
        try container.encode(CE_FACULTY_DESC, forKey: .CE_FACULTY_DESC)
        try container.encode(CE_FACULTY_ID, forKey: .CE_FACULTY_ID)
        try container.encode(CE_ID, forKey: .CE_ID)
        try container.encode(CE_THEME, forKey: .CE_THEME)
        try container.encode(CE_TITLE, forKey: .CE_TITLE)
        try container.encode(CMB_ID, forKey: .CMB_ID)
        try container.encode(CE_COURSE_DESC, forKey: .CE_COURSE_DESC)
        try container.encode(CE_DATE, forKey: .CE_DATE)
        try container.encode(CE_OUTLINE, forKey: .CE_OUTLINE)
        try container.encode(CE_OBJECTIVE, forKey: .CE_OBJECTIVE)
        // Encode other properties as needed
    }
}



//struct CECourseStruct: Decodable {
//    let CE_COURSEID: String
//    let CE_FACULTY: String
//    let CE_FACULTY_DESC: String
//    let CE_FACULTY_ID: String
//    let CE_ID: String
//    let CE_THEME: String
//    let CE_TITLE: String
//    let CMB_ID: String
//    let CE_COURSE_DESC: String
//    let CE_DATE: String
//    let CE_OUTLINE: String
//    let CE_OBJECTIVE: String
//    // Add other properties as needed to match your JSON structure
//}
