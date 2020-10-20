//
//  ContentView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    struct Constants {
        static let plusIconName: String = "plus"
        static let viewTitle: String = "Coffe Orders"
    }

    @ObservedObject private var orderListViewModel = OrderListViewModel()
    @State private var showModal: Bool = false
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some View {
        NavigationView {
            OrderListView(orders: orderListViewModel.orders).padding([.top], Theme.Dimensions.mediumPadding)
                
                .navigationBarTitle(Constants.viewTitle)
                .navigationBarItems(trailing: Button(action: showAddCoffeeOrderView) {
                    Image(systemName: Constants.plusIconName)
                        .foregroundColor(.blue)
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
