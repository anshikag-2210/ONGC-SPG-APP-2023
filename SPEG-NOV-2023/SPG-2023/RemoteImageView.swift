import SwiftUI
import UIKit

struct RemoteImageView: View {
    let imageURL: URL
    @State private var image: Image?
    
    var body: some View {
        if let image = image {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(height: 200) // Adjust the frame size as needed
        } else {
           Image("defaultGallery")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .onAppear(perform: loadImage)
        }
    }
    
    private func loadImage() {
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            if let data = data, let uiImage = UIImage(data: data) {
                self.image = Image(uiImage: uiImage)
            }
        }.resume()
    }
}








