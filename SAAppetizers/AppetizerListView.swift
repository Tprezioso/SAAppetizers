//
//  AppetizerListView.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/6/21.
//

import SwiftUI

struct AppetizerListView: View {
    
    
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListViewCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}


