//
//  Animation.swift
//  RandomAnimation
//
//  Created by Алексей Турулин on 6/12/23.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandom() -> Animation  {
        let presets = DataStore.shared.presets
        let curves = DataStore.shared.curves
        
        let randomPreset = presets.randomElement()
        let randomCurve = curves.randomElement()
        
        return Animation(
            preset: randomPreset?.rawValue ?? "shake",
            curve: randomCurve?.rawValue ?? "easeIn",
            force: .random(in: 0...5),
            duration: .random(in: 0...3),
            delay: .random(in: 0...1)
        )
    }
}
