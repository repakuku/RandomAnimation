//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Алексей Турулин on 6/12/23.
//

import Foundation

final class DataStore {
    static let shared = DataStore()

    enum AnimationPreset: String, CaseIterable {
        case pop
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOut
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case fall
        case shake
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
    }
    
    enum AnimationCurve: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
    }
    
    var presets: [AnimationPreset] {
        var animationPresets: [AnimationPreset] = []
        for index in 0..<AnimationPreset.allCases.count {
            animationPresets.append(AnimationPreset.allCases[index])
        }
        return animationPresets
    }
    
    var curves: [AnimationCurve] {
        var animationCurves: [AnimationCurve] = []
        for index in 0..<AnimationCurve.allCases.count {
            animationCurves.append(AnimationCurve.allCases[index])
        }
        return animationCurves
    }
    
    private init() {}
}
