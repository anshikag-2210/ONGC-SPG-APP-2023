//
//  CECourseDetailView.swift
//  SPEG-NOV-2023
//
//  Created by Anshika Gangwar on 09/10/23.
//

import SwiftUI

struct CECourseDetailView: View {
 @State var cecourseList: CECourseStruct
 var body: some View {
//  VStack{
//   Spacer()
   //Content
   ScrollView{
    VStack(alignment: .leading){
     Group{
      Text("Title").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_TITLE)
      Spacer()
     }
     Group{
      Text("Course No.").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_COURSEID)
      Spacer()
     }
     Group{
      Text("Theme").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_THEME)
      Spacer()
     }
     Group{
      Text("Course Date").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_DATE)
      Spacer()
     }
     Group{
      Text("Course Description").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_COURSE_DESC)
      Spacer()
     }
     Group{
      Text("Course Objective").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_OBJECTIVE)
      Spacer()
     }
     Group{
      Text("Course Outline").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_OUTLINE)
      Spacer()
     }
     Group{
      Text("Faculty").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_FACULTY)
      Spacer()
     }
     Group{
      Text("Organization").fontWeight(.bold).foregroundColor(Color.green)
      Divider()
      Text(cecourseList.CE_FACULTY_DESC)
      Spacer()
     }
    }
    .padding()
  //  Spacer()
   }
   .navigationBarItems(leading: HeaderView(header: "CE Course"))
   footerView()
 // }
 }
}

struct CECourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CECourseDetailView(cecourseList: CECourseStruct(
            CE_COURSEID: "1",
            CE_FACULTY: "Faculty Name",
            CE_FACULTY_DESC: "Faculty Description",
            CE_FACULTY_ID: "2",
            CE_ID: "3",
            CE_THEME: "Course Theme",
            CE_TITLE: "Course Title",
            CMB_ID: "4",
            CE_COURSE_DESC: "Course Description",
            CE_DATE: "Course Date",
            CE_OUTLINE: "Course Outline",
            CE_OBJECTIVE: "Course Objective"
        ))
    }
}


extension CECourseDetailView{
 private var DividerView: some View{
  VStack{
      Color.gray.frame(height: 1 / UIScreen.main.scale)
  }
 }
 
// private struct HeadingStyleModifier: ViewModifier {
//     var font: Font
//     var color: Color
//
//     func body(content: Content) -> some View {
//         content
//       .fontWeight(.bold).foregroundColor(Color.green)
//
//     }
// }
}
