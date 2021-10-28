//
//  SliderView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI

struct SliderView: View {
    
    @ObservedObject var viewModel : HomeScreenViewModel
    @StateObject var imageLoader = ImageLoaderService()
    @State var image: UIImage = UIImage()
    
    @State var index = 0
    
    var images = ["1", "2", "3"]
    
    var body: some View {
        VStack(spacing: 20) {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(self.images, id: \.self) { imageName in
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .onReceive(imageLoader.$image) { image in
                            self.image = image
                        }
                }
            }
            .aspectRatio(4/3, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .padding()
        .onAppear(perform: {
            imageLoader.loadImage(for: "\(viewModel.games[0].background_image)")
        })
        .onChange(of: index) { newValue in
            imageLoader.loadImage(for: "\(viewModel.games[index].background_image)")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(viewModel: HomeScreenViewModel(networkManager: NetworkManager()))
    }
}
