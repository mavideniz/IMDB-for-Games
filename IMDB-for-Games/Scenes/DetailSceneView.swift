//
//  DetailSceneView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 25.10.2021.
//

import SwiftUI



struct DetailSceneView: View {
    
    var game: Game
    @StateObject var imageLoader = ImageLoaderService()
    @State var image: UIImage = UIImage()
    @State var isFavorite = false
    
    
    var body: some View {
        ZStack{
            VStack{
                Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500)
                        .cornerRadius(4)
                        .onReceive(imageLoader.$image) { image in
                            self.image = image
                        }
                Text("Game is \(game.name)")
                Text("Releases date  \(game.released)")
                Text("I can not add other api's value, like description and metacritics.")
                    .padding()
                Spacer()
                
                
            }
            .onAppear(perform: {
                imageLoader.loadImage(for: "\(game.background_image)")
            })
        }
        .navigationTitle(game.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(
            action: {
                print("profile tapped")
                isFavorite.toggle()
            },
            label: {
                if isFavorite == true {
                    Image(systemName: "star.fill")
                }else{
                    Image(systemName: "star")
                }
            }
        ))
    }
}
