//
//  Heartbeat.swift
//  CustomModifiers
//
//  Created by Husnain Ali on 24/07/2024.
//

import Foundation
import SwiftUI

struct Heartbeat: ViewModifier {
    
    @State private var scale: CGFloat = 1.0
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(scale)
            .animation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true), value: scale)
            .onAppear {
                self.scale = 1.1
            }
    }
}
