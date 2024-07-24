//
//  RoundShadow.swift
//  CustomModifiers
//
//  Created by Husnain Ali on 24/07/2024.
//

import SwiftUI


struct RoundShadow: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .shadow(color: .black, radius: 10, x: 0, y: 0)
    }
}
