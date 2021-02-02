//
//  OrderView.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/6/21.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListViewCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order Placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice) - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\n Please add an appetizer.")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
