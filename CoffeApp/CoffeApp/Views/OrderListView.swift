//
//  OrderListView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/14/20.
//

import SwiftUI

struct OrderListView: View {
    let orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        self.orders = orders
    }
    
    var body: some View {
        List {
            ForEach(self.orders, id: \.id) { order in
                HStack {
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: Theme.Dimensions.coffeeImageSize, height: Theme.Dimensions.coffeeImageSize)
                        .padding([.leading, .bottom, .top], Theme.Dimensions.largePadding)
                    
                    VStack(alignment: .leading) {
                        Text(order.name)
                            .font(.system(size: Theme.Dimensions.defaultTitleTextSize))
                            .bold()
                        
                        HStack {
                            Text(order.size)
                                .padding(EdgeInsets(top: Theme.Dimensions.smallPadding, leading: Theme.Dimensions.smallPadding, bottom: Theme.Dimensions.smallPadding, trailing: Theme.Dimensions.smallPadding))
                                .background(Theme.Colors.lightBlue)
                                .foregroundColor(.white)
                                .cornerRadius(Theme.Dimensions.defaultCornerRadius)

                            Text(order.coffeeName)
                                .padding(EdgeInsets(top: Theme.Dimensions.smallPadding, leading: Theme.Dimensions.smallPadding, bottom: Theme.Dimensions.smallPadding, trailing: Theme.Dimensions.smallPadding))
                                .background(Theme.Colors.lightViolet)
                                .foregroundColor(.white)
                                .cornerRadius(Theme.Dimensions.defaultCornerRadius)

                        }
                    }
                    .padding([.bottom, .top], Theme.Dimensions.largePadding)
                    .padding([.leading], Theme.Dimensions.mediumPadding)
                    
                    Spacer()
                }
                .border(Theme.Colors.darkGrey, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(Theme.Dimensions.defaultCornerRadius)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .padding([.leading, .trailing, .bottom], Theme.Dimensions.mediumPadding)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .listRowInsets(EdgeInsets())
            .background(Color.white)
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "Kath", coffeeName: "Cappuccino", total: 20.2, size: "Large"))])
    }
}
