//
//  CoffeeCellView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/19/20.
//

import SwiftUI

struct CoffeeCellView: View {
    let coffee: CoffeeViewModel
    @Binding var selection: String

    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 65, height: 65, alignment: .leading)
            Text(coffee.name)
                .font(.system(size: 16))
                .bold()
                .padding([.leading], 8)
            Spacer()
            Image(systemName: selection == coffee.name ? "checkmark" : "")
        }
        .padding([.bottom, .top, .trailing], 16)
        .onTapGesture {
            selection = coffee.name
        }
    }
}
