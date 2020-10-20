//
//  OrderTotalView.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/20/20.
//

import SwiftUI

struct OrderTotalView: View {
    let total: Double

    var body: some View {
        HStack(alignment: .center)  {
            Spacer()
            Text(String(format: Theme.Constants.priceFormatting, total))
                .font(.title)
                .bold()
            Spacer()
        }.padding(Theme.Dimensions.mediumPadding)
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 5.3)
    }
}
