import SwiftUI

struct CECourseView: View {


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
   
    List(CECoursedata, id: \.CMB_ID) { item in
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
    }
    .listStyle(PlainListStyle())
  }
  .navigationBarItems(leading: HeaderView(header: "CE Course"))
  footerView()
 }
  
// func fetchJSONData() {
//     guard let url = URL(string: "https://spg23-03112023-default-rtdb.asia-southeast1.firebasedatabase.app/tabs/data/CECOURSES.json") else {
//         return
//     }
//     fetchData(from: url) { (result: Result<[CECourseStruct], Error>) in
//         switch result {
//         case .success(let decodedData):
//             DispatchQueue.main.async {
//                 self.data = decodedData
//             }
//         case .failure(let error):
//             print("Error fetching data: \(error)")
//         }
//     }
// }

}
struct CECourseView_Previews: PreviewProvider {
    static var previews: some View {
     CECourseView()
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
