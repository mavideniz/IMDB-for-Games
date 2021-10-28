//
//  ListView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI

struct CardView: View {
    
    var game : Game
    @StateObject var imageLoader = ImageLoaderService()
    @State var image: UIImage = UIImage()

    var body: some View {
        NavigationLink(destination: DetailSceneView(game: game)){
                    HStack {
                        Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(4)
                                .onReceive(imageLoader.$image) { image in
                                    self.image = image
                                }
                                
                        VStack(alignment: .leading, spacing: 5){
                            Text(game.name)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            VStack(alignment: .leading, spacing: 5){
                                
                                Text("Released date: \(game.released)")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                Text("Rating: \(String(format: "%.01f", game.rating))")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    .onAppear(perform: {
                        imageLoader.loadImage(for: "\(game.background_image)")
                    })
        }
}
}
//
//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}

