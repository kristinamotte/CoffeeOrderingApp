//
//  ContentView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListViewModel = OrderListViewModel()

    var body: some View {
        NavigationView {
            OrderListView(orders: orderListViewModel.orders)
                .navigationBarTitle("Coffe Orders")
                .padding([.top], 16)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
