//
//  GamesListViewModel.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 22.10.2021.
//

import SwiftUI


class HomeScreenViewModel: ObservableObject {
    
    @Published var games = [Game]()
    
    private var key = "ce950da61e1d4a4ab0f2fc3faee8a4ea"
    
    // CONSTRUCTOR BASED DEPENDENCY INJECTION
    private var networkManager : NetworkManager
    init(networkManager : NetworkManager) {
        self.networkManager = networkManager
    }
    // CONSTRUCTOR BASED DEPENDENCY INJECTION
    
    func makeNetworkRequest() {
        self.networkManager.makeRequest(key: self.key) { [weak self] dataResponse in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.games = dataResponse.games
            }
        }
    }
    
}
