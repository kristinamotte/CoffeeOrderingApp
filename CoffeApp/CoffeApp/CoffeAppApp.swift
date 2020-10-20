//
//  CoffeAppApp.swift
//  CoffeApp
//
//  Created by Kristina Motte on 10/2/20.
//

import SwiftUI

@main
struct CoffeAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
