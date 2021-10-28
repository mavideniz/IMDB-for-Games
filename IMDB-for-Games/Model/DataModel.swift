//
//  GamesModel.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import Foundation

struct DataResponse: Decodable {
    let games: [Game]
    
    enum CodingKeys: String, CodingKey {
        case games = "results"
    }
}

struct Game: Decodable, Identifiable {
    let id: Int
    let name: String
    let rating: Double
    let released: String
    let background_image: String
    let isFavorite: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case rating
        case released
        case background_image
        case isFavorite
    }
}
