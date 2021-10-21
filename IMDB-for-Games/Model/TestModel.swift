//
//  Model.swift
//  IMDB-for-Games
//
//  Created by Doğancan Mavideniz on 21.10.2021.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let summary: String
    let imageName: String
}

//DUMMY DATA

extension Item {
    static var testData: [Item] {
        return [
            Item(name: "THE DARKNESS BLEND", summary: "Perfect start to any day or just the right roast to keep you going. Crisp, subtle strawberry and apple notes pair with cocoa for a smooth, sweet finish.", imageName: "DarknessBlend"),
            Item(name: "COUNTACH", summary: "With notes of caramel, a hint of red fruit and rich chocolate are all wrapped up in a smooth and velvety finish. This signature blend is designed for those looking to create cafe quality espresso in the comfort of your own home.", imageName: "Countach"),
            Item(name: "GET WOKE BLEND", summary: "Looking for something truly unique? This fruity and creamy blend features notes of caramel, blueberry, dark cherries and brown sugar.", imageName: "GetWokeBlend"),
            Item(name: "EZ MORNING BLEND", summary: "Silky smooth and notes of raspberry, caramel and citrus make this the perfect morning cup of coffee.", imageName: "EZMorning"),
            Item(name: "DR. LUPO'S LIFELINE ROAST", summary: "The Lifeline Roast is a unique collaboration, hand crafted and chosen by the Doctor himself. This combination of bright and berry bomb Ethiopian Yirgacheffe blends and balanced with the earthy and robust notes of Sumatra and Guatemala. Bittersweet, wine like flavors are highlighted in this vibrant cup of coffee. This roast will be your lifeline on those days you just need a little something extra.", imageName: "LupoBlend")
        ]
    }
}
