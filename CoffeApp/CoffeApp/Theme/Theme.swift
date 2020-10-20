//
//  Theme.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/20/20.
//

import SwiftUI

struct Theme {
    struct Colors {
        static let violet = Color(CGColor(red: 0.221, green: 0.439, blue: 1, alpha: 1))   // #9CB8FF
        static let grey = Color(CGColor(red: 0.633, green: 0.633, blue: 0.633, alpha: 1)) // #A1A1A1
        static let darkGrey = Color(CGColor(red: 0.754, green: 0.754, blue: 0.754, alpha: 1)) // #C0C0C0
        static let paleViolet = Color(CGColor(red: 0.942, green: 0.958, blue: 1, alpha: 1)) // #F0F4FF
        static let lightViolet = Color(CGColor(red: 0.359, green: 0.523, blue: 0.946, alpha: 1)) // #5B85F1
        static let lightBlue = Color(CGColor(red: 0.28, green: 0.613, blue: 0.921, alpha: 1)) // #479CEB
    }
    
    struct Dimensions {
        static let coffeeImageSize: CGFloat = 70
        static let smallPadding: CGFloat = 8
        static let mediumPadding: CGFloat = 16
        static let largePadding: CGFloat = 24
        static let hugePadding: CGFloat = 100
        static let defaultCornerRadius: CGFloat = 4
        
        static let defaultBodyTextSize: CGFloat = 16
        static let defaultTitleTextSize: CGFloat = 24
    }
    
    struct Constants {
        static let priceFormatting: String = "$%.2f"
    }
}
