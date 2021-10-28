//
//  Image+Network.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 22.10.2021.
//

import SwiftUI

extension Image {
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
