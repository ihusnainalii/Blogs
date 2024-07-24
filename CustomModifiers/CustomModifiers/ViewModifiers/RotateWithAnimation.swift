//
//  RotateWithAnimation.swift
//  CustomModifiers
//
//  Created by Husnain Ali on 24/07/2024.
//

import SwiftUI

struct RotateWithAnimation: ViewModifier {
    
    @State private var rotation: Double = 0
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(rotation))
            .animation(.easeInOut(duration: 3).repeatForever(autoreverses: false), value: rotation)
            .onAppear {
                self.rotation = 360
            }
    }
}
