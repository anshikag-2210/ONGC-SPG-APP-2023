import SwiftUI

struct NavigateView: View {
 let locationURLString = "https://www.google.com/maps/place/Lulu+Bolgatty+International+Convention+Center+(LBICC)/@9.9883633,76.2621525,17z/data=!3m1!4b1!4m6!3m5!1s0x3b0813dc626a1617:0x8f7e54ced4d6f823!8m2!3d9.988358!4d76.2647274!16s%2Fg%2F11df0zfrhs?entry=ttu"
    
    @State private var isURLInvalid = false
    
    var body: some View {
        ZStack {
            Text("Navigate View")
                .onAppear {
                    openLocationInMaps()
                }
        }
        .alert(isPresented: $isURLInvalid) {
            Alert(
                title: Text("Invalid Location"),
                message: Text("The location URL is invalid or cannot be opened."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    func openLocationInMaps() {
        if let locationURL = URL(string: locationURLString), UIApplication.shared.canOpenURL(locationURL) {
            UIApplication.shared.open(locationURL, options: [:], completionHandler: nil)
        } else {
            isURLInvalid = true
        }
    }
}

struct NavigateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigateView()
    }
}

