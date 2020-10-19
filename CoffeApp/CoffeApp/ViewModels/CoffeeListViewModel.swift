//
//  CoffeeListViewModel.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/15/20.
//

import Foundation

class CoffeeListViewModel {
    var coffeList: [CoffeeViewModel] = [CoffeeViewModel]()
}

struct CoffeeViewModel {
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        return coffee.name
    }
    
    var imageURL: String {
        return coffee.imageURL
    }
    
    var price: Double {
        return coffee.price
    }
}
