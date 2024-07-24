//
//  RoundWithShadow.swift
//  CustomModifiers
//
//  Created by Husnain Ali on 24/07/2024.
//

import SwiftUI

struct RoundWithShadow: ViewModifier {
    var shadowColor: Color
    var shadowRadius: CGFloat
    var shadowX: CGFloat
    var shadowY: CGFloat
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
    }
}
