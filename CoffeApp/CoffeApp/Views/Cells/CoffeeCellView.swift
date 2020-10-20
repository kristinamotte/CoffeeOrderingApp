//
//  CoffeeCellView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/19/20.
//

import SwiftUI

struct CoffeeCellView: View {
    struct Constants {
        static let checmarkImageName: String = "checkmark"
    }

    let coffee: CoffeeViewModel
    @Binding var selection: String

    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .frame(width: Theme.Dimensions.coffeeImageSize, height: Theme.Dimensions.coffeeImageSize, alignment: .leading)
            Text(coffee.name)
                .font(.system(size: Theme.Dimensions.defaultBodyTextSize))
                .bold()
                .padding([.leading], Theme.Dimensions.smallPadding)
            Spacer()
            Image(systemName: selection == coffee.name ? Constants.checmarkImageName : "")
        }
        .padding([.bottom, .top, .trailing], Theme.Dimensions.mediumPadding)
        .onTapGesture {
            selection = coffee.name
        }
    }
}
