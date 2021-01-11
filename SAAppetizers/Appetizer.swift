//
//  Appetizer.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/8/21.
//

import SwiftUI

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                     name: "Test App",
                                     description: "This is the description for the app",
                                     price: 2.99,
                                     imageURL: "",
                                     calories: 99,
                                     protein: 99,
                                     carbs: 99)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
