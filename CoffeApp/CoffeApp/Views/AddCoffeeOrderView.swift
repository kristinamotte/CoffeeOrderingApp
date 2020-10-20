//
//  AddCoffeeOrderView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/19/20.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    struct Constants {
        static let informationSectionTitle: String  = "Information"
        static let informationPlaceholder: String = "Enter name"
        static let selectCoffeeTitle: String = "Select your coffee"
        static let selectSizeTitle: String = "Select size"
        static let smallSize: String = "Small"
        static let mediumSize: String = "Medium"
        static let largeSize: String = "Large"
        static let buttonName: String = "Place order"
        static let viewTitle: String = "Add Order"
    }

    @ObservedObject private var addCoffeeOrderViewModel = AddCoffeOrderViewModel()
    @Binding var isPresented: Bool

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text(Constants.informationSectionTitle).font(.body)) {
                        TextField(Constants.informationPlaceholder, text: $addCoffeeOrderViewModel.name)
                    }
                    
                    Section(header: Text(Constants.selectCoffeeTitle).font(.body))  {
                        ForEach(addCoffeeOrderViewModel.coffeList, id: \.name) { coffee in
                            CoffeeCellView(coffee: coffee, selection: $addCoffeeOrderViewModel.coffeName)
                        }
                    }
                    
                    Section(header: Text(Constants.selectSizeTitle).font(.body), footer: OrderTotalView(total: addCoffeeOrderViewModel.total)) {
                        Picker("", selection: $addCoffeeOrderViewModel.size) {
                            Text(Constants.smallSize).tag(Constants.smallSize)
                            Text(Constants.mediumSize).tag(Constants.mediumSize)
                            Text(Constants.largeSize).tag(Constants.largeSize)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }
                .padding([.top], Theme.Dimensions.mediumPadding)
                
                HStack {
                    Button(Constants.buttonName) {
                        addCoffeeOrderViewModel.placeOrder()
                        isPresented = false
                    }.disabled(!addCoffeeOrderViewModel.canPlaceOrder())
                    .padding(EdgeInsets(top: Theme.Dimensions.mediumPadding, leading: Theme.Dimensions.hugePadding, bottom: Theme.Dimensions.mediumPadding, trailing: Theme.Dimensions.hugePadding))
                    .foregroundColor(Color.white)
                    .background(addCoffeeOrderViewModel.canPlaceOrder() ? Theme.Colors.violet : Theme.Colors.grey)
                    .cornerRadius(Theme.Dimensions.defaultCornerRadius)
                }
                .padding([.bottom], Theme.Dimensions.mediumPadding)
                Spacer()
            }
            .navigationBarTitle(Constants.viewTitle)
            .background(Theme.Colors.paleViolet).edgesIgnoringSafeArea(.all)
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(false))
    }
}
