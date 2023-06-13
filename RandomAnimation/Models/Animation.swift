//
//  Animation.swift
//  RandomAnimation
//
//  Created by Алексей Турулин on 6/12/23.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getRandom() -> Animation  {
        let presets = DataStore.shared.presets
        let curves = DataStore.shared.curves
        
        let randomPreset = presets[Int.random(in: 0..<presets.count)]
        let randomCurve = curves[Int.random(in: 0..<curves.count)]
        
        return Animation(
            preset: randomPreset.rawValue,
            curve: randomCurve.rawValue,
            force: .random(in: 0...5),
            duration: .random(in: 0...3),
            delay: .random(in: 0...1)
        )
    }
}
