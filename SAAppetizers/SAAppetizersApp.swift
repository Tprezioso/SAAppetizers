//
//  SAAppetizersApp.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/6/21.
//

import SwiftUI

@main
struct SAAppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
