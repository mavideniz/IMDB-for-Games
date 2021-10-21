//
//  ListView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI

struct CardView: View {
    
    var items: [Item] = Item.testData

    var body: some View {
        List(items, id: \.id) { video in
        HStack {
            Image("1")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(4)
            VStack(alignment: .leading, spacing: 5){
                Text(video.name)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    
                Text(video.summary)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Tarih")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
