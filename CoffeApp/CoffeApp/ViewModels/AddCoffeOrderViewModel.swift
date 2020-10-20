//
//  AddCoffeOrderViewModel.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/15/20.
//

import Foundation

class AddCoffeOrderViewModel: ObservableObject {
    var name: String = ""
    @Published var size: String = "Medium"
    @Published var coffeName: String = ""
    
    var coffeList: [CoffeeViewModel] {
        return Coffee.all().map(CoffeeViewModel.init)
    }
    
    private var coffeeService: CoffeeService
    
    init() {
        self.coffeeService = CoffeeService()
    }
    
    var total: Double {
        return calculateTotalPrice()
    }
    
    func canPlaceOrder()  -> Bool {
        if name.isEmpty || coffeName.isEmpty {
            return false
        }
        return true
    }
    
    func placeOrder() {
        let order = Order(name: name, coffeeName: coffeName, total: total, size: size)
        coffeeService.createCoffeOrder(order: order) { _ in }
    }
    
    private func priceForSize() -> Double {
        let prices = ["Small": 2.0, "Medium": 3.0, "Large": 4.0]
        guard let price = prices[self.size] else {
            return 0.0
        }
        return price
    }
    
    private func calculateTotalPrice() -> Double {
        let coffeViewModel = coffeList.first { $0.name == coffeName }
        if let coffeViewModel = coffeViewModel {
            return coffeViewModel.price * priceForSize()
        } else {
            return 0.0
        }
    }
}
