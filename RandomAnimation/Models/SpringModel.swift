//
//  SpringViewModel.swift
//  RandomAnimation
//
//  Created by Serge Bowski on 1/27/24.
//

import Foundation
import SpringAnimation

struct SpringModel {
    let animationPreset: AnimationPreset
    let curvePreset: AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getModel() -> SpringModel {
        SpringModel(
            animationPreset: AnimationPreset(rawValue: "squeezeUp") ?? .squeezeUp,
            curvePreset: AnimationCurve(rawValue: "easeOut") ?? .easeOut,
            force: 1.24,
            duration: 0.82,
            delay: 0.3
        )
    }
}
