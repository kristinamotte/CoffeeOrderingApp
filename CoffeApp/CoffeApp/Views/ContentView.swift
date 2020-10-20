//
//  ContentView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListViewModel = OrderListViewModel()
    @State private var showModal: Bool = false
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some View {
        NavigationView {
            OrderListView(orders: orderListViewModel.orders).padding([.top], 16)
                
                .navigationBarTitle("Coffe Orders")
                .navigationBarItems(trailing: Button(action: showAddCoffeeOrderView) {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                })

                .sheet(isPresented: $showModal, onDismiss: {
                    reloadOrders()
                }) {
                    AddCoffeeOrderView(isPresented: $showModal)
                }
        }
    }
    
    private func reloadOrders() {
        orderListViewModel.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        showModal = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
