//
//  NoProductsView.swift
//  ContentUnavailableView
//
//  Created by Husnain Ali on 24/07/2024.
//

import SwiftUI

struct NoProductsView: View {
    var body: some View {
        ContentUnavailableView(
            "No Products Available",
            systemImage: "magnifyingglass",
            description: Text("Try a different category or check back later.")
        )
    }
}

#Preview {
    NoProductsView()
}
