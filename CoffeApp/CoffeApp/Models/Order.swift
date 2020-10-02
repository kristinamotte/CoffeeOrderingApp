//
//  Order.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/2/20.
//

import Foundation

struct Order: Codable {
    let name: String
    let coffeeName: String
    let total: Double
    let size: String
}
