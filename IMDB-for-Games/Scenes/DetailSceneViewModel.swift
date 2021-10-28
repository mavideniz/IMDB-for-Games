//
//  DetailSceneViewModel.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 25.10.2021.
//

import SwiftUI

class DetailSceneViewModel: ObservableObject {
    
    @Published var games = [Game]()
    @State private var key2 = "3498"

    // CONSTRUCTOR BASED DEPENDENCY INJECTION
    private var networkManager : NetworkManager
    init(networkManager : NetworkManager) {
        self.networkManager = networkManager
    }
    // CONSTRUCTOR BASED DEPENDENCY INJECTION
    
    func makeNetworkRequest2() {
        self.networkManager.makeRequest2(key2: self.key2) { [weak self] dataResponse in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.games = dataResponse.games
            }
        }
    }
    
}


