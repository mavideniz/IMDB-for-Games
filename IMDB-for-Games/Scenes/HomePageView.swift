//
//  HomePageView.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var searchText = ""
    
    @StateObject var viewModel = HomeScreenViewModel(networkManager: NetworkManager())
    
    
    var body: some View {
        if viewModel.games.count == 0 {
            Text("Loading")
                .navigationBarHidden(true)
            .onAppear(perform: {
                viewModel.makeNetworkRequest()
            })
        }
        else {
            ZStack {
                VStack {
                    SearchBarView(searchText: $searchText)
                    SliderView(viewModel: viewModel)
                    ScrollView{
                        ForEach(viewModel.games,id : \.id) { game in
                            CardView(game: game)
                        }
                        
                    }
                    Spacer()
                }
                .navigationBarHidden(true)
            }
            .onTapGesture {
                hideKeyboard()
            }
        }
        
    }
}
