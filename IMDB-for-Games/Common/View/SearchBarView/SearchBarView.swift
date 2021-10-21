//
//  SearchBarView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI
 
struct SearchBarView: View {
    
    @Binding var searchText: String
     
    var body: some View {
         ZStack {
             Rectangle()
                 .foregroundColor(Color("LightGray"))
             HStack {
                 TextField("Search ..", text: $searchText)
                 Spacer()
                 Image(systemName: "magnifyingglass")
             }
             .foregroundColor(.gray)
             .padding(.leading, 13)
         }
             .frame(height: 40)
             .cornerRadius(13)
             .padding()
     }
 }
