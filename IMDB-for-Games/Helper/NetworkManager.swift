//
//  NetworkManager.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 22.10.2021.
//

import Foundation

//https://api.rawg.io/api/games?key=ce950da61e1d4a4ab0f2fc3faee8a4ea

//https://api.rawg.io/api/games/3498?key=ce950da61e1d4a4ab0f2fc3faee8a4ea Details


class NetworkManager {
    
    
    func makeRequest(key : String , completion : @escaping (DataResponse) -> (Void)) {
        guard let url = URL(string: "https://api.rawg.io/api/games?key=\(key)") else { return }
        URLSession.shared.dataTask(with: url) { data, _ , error in
            if error == nil {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodedData = try decoder.decode(DataResponse.self, from: data)
                        completion(decodedData)
                    }catch {
                        print("Unable to decode the data")
                    }
                }
            }
        }.resume()
    }
    
    func makeRequest2(key2 : String , completion : @escaping (DataResponse) -> (Void)) {
        
        guard let url = URL(string: "https://api.rawg.io/api/games/\(key2)?key=ce950da61e1d4a4ab0f2fc3faee8a4ea") else { return }
        URLSession.shared.dataTask(with: url) { data, _ , error in
            if error == nil {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodedData = try decoder.decode(DataResponse.self, from: data)
                        completion(decodedData)
                    }catch {
                        print("Unable to decode the data")
                    }
                }
            }
        }.resume()
    }
}


