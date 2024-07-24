//
//  EmptyCartView.swift
//  ContentUnavailableView
//
//  Created by Husnain Ali on 24/07/2024.
//

import SwiftUI

struct EmptyCartView: View {
    var body: some View {
        ContentUnavailableView(
            "Your Cart is Empty",
            systemImage: "cart",
            description: Text("Browse our products and add items to your cart.")
        )
    }
}

#Preview {
    EmptyCartView()
}
