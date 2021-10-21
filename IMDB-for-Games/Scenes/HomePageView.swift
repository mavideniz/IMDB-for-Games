//
//  HomePageView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                SearchBarView(searchText: $searchText)
                SliderView()
                CardView()
                Spacer()
                
                
                
            }
        }
        .navigationBarHidden(true)
        .onTapGesture {
            hideKeyboard()
        }
    }
}
