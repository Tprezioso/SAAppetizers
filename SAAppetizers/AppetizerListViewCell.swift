//
//  AppetizerListViewCell.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/10/21.
//

import SwiftUI

struct AppetizerListViewCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 90)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$ \(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }.padding(.leading)
        }
    }
}

struct AppetizerListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListViewCell(appetizer: MockData.sampleAppetizer)
    }
}
