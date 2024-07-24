//
//  NetworkUnavailableView.swift
//  ContentUnavailableView
//
//  Created by Husnain Ali on 24/07/2024.
//

import SwiftUI

struct NetworkUnavailableView: View {
    var body: some View {
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.exclamationmark",
            description: Text("Please check your connection and try again.")
        )
    }
}

#Preview {
    NetworkUnavailableView()
}

