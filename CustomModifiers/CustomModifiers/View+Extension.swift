//
//  View+Extension.swift
//  CustomModifiers
//
//  Created by Husnain Ali on 24/07/2024.
//

import Foundation
import SwiftUI

extension View {
    
    func heartbeat() -> some View {
        modifier(Heartbeat())
    }
    
    func funcRoundShadow() -> some View {
        modifier(RoundShadow())
    }
    
    var varRoundShadow: some View {
        modifier(RoundShadow())
    }
    
    func rotateWithAnimation() -> some View {
        modifier(RotateWithAnimation())
    }
    
    var rotateWithAnimationVariable: some View {
        modifier(RotateWithAnimation())
    }
    
    func funcRoundWithShadow(shadowColor: Color = .black,
                             shadowRadius: CGFloat = 10,
                             shadowX: CGFloat = 0,
                             shadowY: CGFloat = 0) -> some View {
        modifier(RoundWithShadow(shadowColor: shadowColor, shadowRadius: shadowRadius, shadowX: shadowX, shadowY: shadowY))
    }
    
    var varRoundWithShadow: some View {
        modifier(RoundWithShadow(shadowColor: .black, shadowRadius: 10, shadowX: 0, shadowY: 0))
    }
}
