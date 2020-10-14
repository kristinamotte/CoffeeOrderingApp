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
                        .frame(width: 70, height: 70)
                        .padding([.leading, .bottom, .top], 24)
                    
                    VStack(alignment: .leading) {
                        Text(order.name)
                            .font(.system(size: 24))
                            .bold()
                        
                        HStack {
                            Text(order.size)
                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                                .background(Color(CGColor(red: 0.28, green: 0.613, blue: 0.921, alpha: 1)))
                                .foregroundColor(.white)
                                .cornerRadius(4.0)

                            Text(order.coffeeName)
                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                                .background(Color(CGColor(red: 0.359, green: 0.523, blue: 0.946, alpha: 1)))
                                .foregroundColor(.white)
                                .cornerRadius(4.0)

                        }
                    }
                    .padding([.bottom, .top], 24)
                    .padding([.leading], 16)
                    
                    Spacer()
                }
                .border(Color(CGColor(red: 0.754, green: 0.754, blue: 0.754, alpha: 1)), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(2.0)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .padding([.leading, .trailing, .bottom], 16)
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
