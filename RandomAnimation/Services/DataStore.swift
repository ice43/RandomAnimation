//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Serge Bowski on 2/20/24.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animations: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .zoomIn,
        .wobble,
        .zoomOut
    ]
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
