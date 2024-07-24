//
//  ContentView.swift
//  CustomModifiers
//
//  Created by Husnain Ali on 23/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Thankyou")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .modifier(RotateWithAnimation())
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
