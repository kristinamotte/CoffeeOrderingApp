//
//  Coffee.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/2/20.
//

import Foundation

struct Coffee {
    let name: String
    let imageURL: String
    let price: Double
}

extension Coffee {
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "Espresso", price: 2.1),
            Coffee(name: "Reqular", imageURL: "Reqular", price: 1.0)
        ]
    }
}
